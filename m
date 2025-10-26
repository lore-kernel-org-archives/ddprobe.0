Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D3238C0A
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761518394; cv=none; b=My+XrA+YRuo9MSG0P2jb7fHJVsgVQNenIONj94R0eJeN+HlXj978Vfjm/EqIYnMytAOGz6QP5jTUeZMPs0m+x1X+4pu2VilVHmc0dP0S7ZdoyUJJNacOkFuToUIgUacOBEwlm35FdVoJVdhP4dxcrDWdaV7k5JsisMvCWe1TwX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761518394; c=relaxed/simple;
	bh=cgDNSta+T9PKw4J9RLMYVhArnsHEKD7l6PhCzXDmu3s=;
	h=To:Subject:From:Message-Id:Date; b=Q4onNcg9ZfxNTMpwlVjrLs0eYr4Pd8CqLTZZVl3gDd/vqib04GZK2Ud56NVaFQ2Af3uNcVZ+GUym4zlcLveXPM2+icoAcAaro1SbZgL7KHkYOA3D0KL2RaQBfRx9eHjjetqPfr/l85sF2N1YfNKFm/KiKQbXk3dq/80r0Kgid/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMKNbl3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMKNbl3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0815C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761518393;
	bh=cgDNSta+T9PKw4J9RLMYVhArnsHEKD7l6PhCzXDmu3s=;
	h=To:Subject:From:Date:From;
	b=LMKNbl3reGPNI/TQ2f/Zr4XKhuUVlAeGyS/Ndw6c7lrQ2XKzHx/oDBZiGGBM9xRPi
	 A+RNJ+jCF6AL9qRsS6flqGJ41X7WYmRL5tkWJaVmf0aGBwXuoSxpb8erfUqmgeO0IY
	 sO5CxRdszXm4jVIYJ24Ix8HUHNJjYGMfnI0UKCS632fZ4k18T7a54+yCO25Bt5gdFr
	 cBqwdJO6/r2QIB+JvHaQrbYy3wBhrPOH7lisXL27H03OFM6WtX8za4zdwIw/+d2DHz
	 obAzoespMWfBIEMVkFoRPSGLb4c00zDKsMWWTBOzWo4+a/VugHz8YN7Ao8sAYWxDdO
	 LYu7xEmV7J7RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7ECCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151839357.13975.7287035955227101983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1900c1c147d0cebf510ca5116205c67df3596607c05dde00fd0fadeeaa0dbcf
Date: Sun, 26 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761518393
