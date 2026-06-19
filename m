Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7362E7BD6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781832994; cv=none; b=H0Wd38imG3PJ35WNm9vvnpMQ/+AvAZgZNZkBlgvLEhRPJoOt7P7qJv/OMTIrCy+Kg1Ql+6/5MjBCy+oFEFXzMGsgQPT8IgeC82/hv6Cosk17OxiCYmt2UZXcqhfNJjqm9oX5sbs8ZEShFeQCfbIzPFItMV+GD9Yomx8oNLuHxiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781832994; c=relaxed/simple;
	bh=GVy8Jxzdgp7tm1hqzQauCPS8soGCp32bTFVYIPpmgac=;
	h=To:Subject:From:Message-Id:Date; b=tXynQw7oLCDaepyIgHBM0d5aKL0xaPuLU3RF2WZKC/jpp2iCDHdL8B7EK5BN5wh+ZD3oEE+t0gv4A8ImHKIJWtIs23Sa7GVmrJ3uCmL7MyLd0uOLNt6gNV3KE/bcgOu7I0b6HRmaxU+lDWG6pCynabGREqXEZ0CgbyeuQnaca64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=No2/7xeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="No2/7xeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C1BC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781832993;
	bh=GVy8Jxzdgp7tm1hqzQauCPS8soGCp32bTFVYIPpmgac=;
	h=To:Subject:From:Date:From;
	b=No2/7xeY9aRk+abt2OKZPNy8unc1aq0RWrhh9XcsluGifBrWHUWQT/oQguHdhK7vv
	 7N3IBxD8v5an+8fLJA6FZAjBJZ4xFiRuDrhr4pY+WwjKRULus003tIu+oAOfGSXCVZ
	 m+TBGWS3A30TiaFTbX5n08OF30QqgszBlZIz/z0zKvGJu+vFtDK5KhjJ85ycVx5Vam
	 ymjr37ZeIhsNVDl1cFvp5titR25HghQVjsXylQpK4CQOcKu2KZ3DJsNqthTm5a4w1X
	 UP/jDZx6seCmxgSR1JnqGrAWBG0TOhDFaubCUbRuMpae05lR2NvUEDCUsZDuwdw5ZP
	 VfP70Yd+Hz3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA007CD98F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183299368.17494.11795783333953542143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f6a222a5cb940ce3f335dd1710e4e6682eae4dda9dabc4cb552b73432d2480
Date: Fri, 19 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781832993
