Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234634D8CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767275634; cv=none; b=ox+QRb0i9tBg9takm9z5nQZBvJNwO+qZOuZynyg25Jb8IfSmUe2apUGJQgKWKiS3jGB4r9c5zErC8ut6nSmMPwCBF/EYyd1S2yNCB5FuuKQhiCCfo+xw2s8u+IU4dqPNN3+gEOnyxtZtHfyBVxJJ6HAtHgRyULI6T2IP00spv1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767275634; c=relaxed/simple;
	bh=rBU51/PAUEuAxUR7CXGHeXvjTlK0R9T/cBWh2mpL7rs=;
	h=To:Subject:From:Message-Id:Date; b=hzaSpCMAWs9Qiw5Tq1wg+r7YWYtdxh/USTRpNTKe2RJ4d1dl7Xb5GB0lZz64Qbb9UdnajgBxqylEi3Ydh7MX4uNh6WMBDcrulPzBBlvWVwFSqLbHsaEMZPWH0glakQ7vDJj8qijPYDBZoYKF8+F76K6clCaEUAjpU7C/3kE5xv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf7PxdJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf7PxdJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E9DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767275633;
	bh=rBU51/PAUEuAxUR7CXGHeXvjTlK0R9T/cBWh2mpL7rs=;
	h=To:Subject:From:Date:From;
	b=kf7PxdJonC20A4LU9dF2MVPIHTWk4MBrPyGK4Y3HN9KL4YvfP81nSX/W/ayTOBUL5
	 Rco0g2OVMtozeM/vr/4jstPBm11m8DcUVQ9K2SNqSgTZ6IAcCOjuf4B73Kh2IR+tVO
	 Ie3OKBL7j9Hhfw9dCS4HkmieimFz9pjYb1y4ACeNFIbwhzCCCEU7Jrok+NgdIRt/AL
	 o9NMNn48JW1Uw0o4a2rwnnqItugN9qwy0m7PXM9/SgdUMlarnCTIU/WC+O69B2s1eW
	 jb2Ujlq9DRKKHwqypbsHJ471XyrO1ZRqUvCQ9GPLm7H22XU2RgJ+j0bgtjC/xJP1Zd
	 nNH/a6gAXVuJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C7EED609
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727563357.1328.769212421837844097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49ae1d50ef11c5b4e47a652a1853c9b0d5b21ca140146af22b972f39528abd9
Date: Thu, 01 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767275633
