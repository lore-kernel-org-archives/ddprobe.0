Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340DE263F54
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763447514; cv=none; b=fRUhqIQfZ+kEKKZqsye1Nd1TnYqkHJFZG50Tk1jfcZuElYOHsmT+2gPLzLqwvCHJ2cbNHIC2fwK3ejQJzqqFffSMaRJcBqnwL8ppaq83fv+7GB3rVySV3tqcj3f1eMs1GA4QT8jU9gtnzEtvc522W14bH3nPTe1E2v2Pj6qAMIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763447514; c=relaxed/simple;
	bh=g3ZZacPijJ9F+2oGsRhdHI1Kh0/5FnEHc+qmAviaD30=;
	h=To:Subject:From:Message-Id:Date; b=aJxNP5hk34aHU0CBiLKeCH0VM2NyFMgRDEP8karvV2/M2skYFFkDjJleiaMqNZD5vFOCaP0OP6nu0rY5jO+ciGzrfrp9/9UWyRbb0CswTyYYSidJPC2Q0XfW+GaAXVNplJsVYHbD9HZc6RR2WCH/72khnHxISs+2EKryXK4tmPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6xUBj0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6xUBj0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE89C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763447513;
	bh=g3ZZacPijJ9F+2oGsRhdHI1Kh0/5FnEHc+qmAviaD30=;
	h=To:Subject:From:Date:From;
	b=L6xUBj0whYkSyPYCdk4Ysmfji0hQN7hDewMH+beBHLelGRaEx+WM1BrdtBUwMCaCD
	 LJoFt09MjWXCqV9whWITbw6R5Tvptor3EQFWkbELXgjQiQOlZeZwmHLxVjlGfPdeJH
	 gB6LHVxhU8GSCX3GuDWhlPy0q5jLDtmLTljOffMIcGvugDbAGPPlCoep2ymntDjgn0
	 kTTJCwsAeNa2C2jqfSdjVwAz2IMoUdSaONV0ziAiIpVUz+DTj6/yUC4n0wcZnAXW8y
	 3i5YzzHYPggmbirDs15iGRIhkA5xqwjlbckyIVQcMfeTFPIQhXOm10VPP9x2LPfc2I
	 s1SGn5eP9OaWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90976CEBF93
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344751358.3376.11601183739191479928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784404f17e886f44827f3315e0d2b2323962b9faa093ae239fe987e6e3f8bc16
Date: Tue, 18 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763447513
