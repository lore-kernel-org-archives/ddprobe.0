Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4C92DF12F
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768581834; cv=none; b=pqcZa98PykDAan+oNaKwHFT/e7n6HRRDRLOKJdJu3sbRo+uyZ1C2Rgw93QVdi9LbSz0yL0SRMHrNsI25gWw+1t2BqNDMeSlWTRaJkUwTYujA9ff/y/rVOZdZbI6kYWs0gBvFx7cxa6TCJH/IpbnBT9ltO66bDWZlbQGbV760m8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768581834; c=relaxed/simple;
	bh=QZxHtPFylCgNYeSwZ14qKde7ulaPnQKXOohmH/JTBVE=;
	h=To:Subject:From:Message-Id:Date; b=G5D5PCWUUxwEOpUy01VQ/p2KofTtOAVAe5VyPzJEQgkt3A4mzKuZd3rHtS6lGcs4ZLSmN+glAKLcvb2LszhGpJd/VFzeRI9FdaNA98eObXkQQD09q/bsyriaggKvRUBQZZhixXHA0+9cwmAFDjuXGmWGEtA/pV90ZNnZwjr1/Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7PKIpYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7PKIpYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB59C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768581833;
	bh=QZxHtPFylCgNYeSwZ14qKde7ulaPnQKXOohmH/JTBVE=;
	h=To:Subject:From:Date:From;
	b=A7PKIpYUFT3PeFiLoShR34zeT3C82Bq9k+xDSniHjdjALoxO9t+kuOWKl/vkykZnK
	 Ea1daKB+wsdtBFdxwc2maZaLz4XD1Oa6383ayUhG2elVpTH+lgV9Io4kDM0Z2r7vAJ
	 A6HV0VB8slfDa8C5x1EOVBPsKeULoJzMLL4CV0iv9PA1jrQxT7uGipBOZVy/MsOdsS
	 vLuD2K3mO+Nq7zU42/55iQkdjKLaC2HNgQ36QqrKevex+4sfTKjK/toKt2mXo2gxUC
	 JlYQbEEMWkWexRnnEM6t1OEemRilpOrYCVlQ+X9KyHWC9TtUtekLWJ2sc4deCQBo/r
	 SbzltYgrBimAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B1C982DB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858183357.26173.10795355074447629032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88aeb9b4090bdd4b3743fb48b95d8e9d61a5f64f57fcdb6796e793e97da02a02
Date: Fri, 16 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768581833
