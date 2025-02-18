Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CE854738
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739885934; cv=none; b=GwP6hYgzqWqqBDLLGT/wGTL0pj8EFXLw8uBLCnA9d+UQKcOpGG4tK2Q10GnCnVAeJUua/Kc2LTXwHGLBwp/3WTBzYKF6uy3/+P3gDF9qQcmfLfYNORcErATa84U+farn0QLuFdFcQY3HaJnr3eOEZGNzwuaTew2+bDkvFBKjQSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739885934; c=relaxed/simple;
	bh=R/hABMbtDP40I0ASPpUE1oMgaH+6EzOz4klcP/mCIs8=;
	h=To:Subject:From:Message-Id:Date; b=bwQMXgaVSMAPVcZwxdhoAZLYoAAnKk9/NEEWugEPT+zEs50Csazf+F2fOSGc+HAoRp4w+8Ep/kJFhaSALMi9cgwv+F/PzzGgwOEwG8kXyBCL2xfiSevi+NF9k3M0XnY8dPQNXRj3PkPbWJkDVl3VZ9IWH0efniBmor5r3kA9uRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPCwE3AQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPCwE3AQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBF0C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739885933;
	bh=R/hABMbtDP40I0ASPpUE1oMgaH+6EzOz4klcP/mCIs8=;
	h=To:Subject:From:Date:From;
	b=vPCwE3AQ2VzLdMqdSjxq+L/cio2j8gL+VJPsueQnL6RDP/MzE4wBoljFS+OScQ09+
	 rdMi4gB9evf8LMaeqtelqkrnPKB04QrYFWq4ulW7PY5c7D+6RPdlPk09747mYaM3bq
	 2/R9UAcY6TCDu6wz6NjSDGZ0+IN0O9oh3lTnaM89pXYUcT6Yh+X39U6LGa16SbneAn
	 c3KmSKT8ZHLcfk39LeszVNq2gsXA1B+pQWbbFpmk4j5XfTFd2rAr3GaZtilNkE/ByU
	 orIpKdZi0sOnw2+m7Hz5MZLKucy7J9fV2cWf8G9m3pyY3Cl8K11nhMjmVaayY7bJ2w
	 qabzLX4FjKQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB0C02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173988593360.14026.360982505385843237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936a76c51aace9889a6d5bdbdb6720dd4a4991c6c30b428bded1caf5206bf122
Date: Tue, 18 Feb 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739885933
