Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292801B86D5
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721404554; cv=none; b=sM+Dm+YKmE0CCwpGJ4pJlTdvqtYYWtsNvNtstodFyheD195WAEEQOMbC6Q74ug3/X2eNGiKs3L2ZKgLilB4nOuVPNSAJEx/IzVWRI6mMi+5S1uc4qPbgOzQxGVU8s63KNXS5iAh6gnnqkTfqVaEw1Bt7h55CSUxxTyU4MIvZUXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721404554; c=relaxed/simple;
	bh=+C918rQMOn9YOuzYzM966EhxZXTHPW1CIY+xUe+fU1k=;
	h=To:Subject:From:Message-Id:Date; b=BoNpkK/QLZEc/NOMiNEBi8sQGrjqwnFIaQ50YBgUew5bl9uQuOLSCNANXc6JdZPwfHxoAOBnHdMssiFtFt8kibVL/SDrkSFQevidtdA7NzFAxzDONfeykm0KrYBvJLO6P/cOXIBIQ/O0/ofM5m43+yYY0Vgt7q7TIWvNyDmSmnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bztpC4O/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bztpC4O/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B503FC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721404553;
	bh=+C918rQMOn9YOuzYzM966EhxZXTHPW1CIY+xUe+fU1k=;
	h=To:Subject:From:Date:From;
	b=bztpC4O/L0/Lkpw+82Ar6Ljy6VbPqrFRgi5gNfPt4lkKL6pICQJraIRXhrGzrv3Qv
	 Zm3s3yZVSUK9Q47jnkscaESwV0Iit+AOC8MzSuVhVlXZvqFJgLUHpmyV6ANYVlkVbi
	 0ar+UqGP++HVS5KrqS/c9x8xQ9993sW3ii4NG4wE25RvZmqVT0Vq4cXr75LMDZp4PW
	 YYJA826toi081h9yiZXfJouos5BDGkIbeS1bxyGojI3smvd1DAVjLWc+ollSPKMCzn
	 HHHYRXStSnshEEjODryTmZcDpTsTAGjVICu0wlzZEAZyv8lkxSAa2pWnFESrKPsYYU
	 fynH8zms2vPag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67FCC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140455367.16383.1689466737749844844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bae887d8c54d85f3feed3d3201c613dd468ab801d84b0af30d2e56f1b884a15
Date: Fri, 19 Jul 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721404553
