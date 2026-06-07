Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4ED25B0BF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780824874; cv=none; b=aPgSuxttd4y0d8ey2tksRTeJ9buUsWgy0GVI2vc2OxzBg2lZXHU6o1hYWX7cuU2o9HENvaRw03m+nGqknZFd34EC5RaK4a1Jp93Ia3TE+gmbqo0QXVu4WT1QzrY8oK4un8BtUGOahN9SB/GDV9uUddWSj4iev9Lg932/IMiF+LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780824874; c=relaxed/simple;
	bh=j7ihzXeN73b5WXOx+GgVEMoVf1JYLNHoTuVG5MqWmXE=;
	h=To:Subject:From:Message-Id:Date; b=RYteXSo0YClUlgbxsq8B29XmQ0a6Vdr38lKWV0SIpLxE9BfwVt1cXfkLPIYex8giU18FbEDMi7cyH8XJrRDzry7vhdVaxp17VYpfH0OkijwM0j/cm6jfObvXSgEpormMrKIt7AQDXZf+gIlcvlAyCMVqXRvQ38rfWP5T3EY8R1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9K8+CPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9K8+CPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3DFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780824873;
	bh=j7ihzXeN73b5WXOx+GgVEMoVf1JYLNHoTuVG5MqWmXE=;
	h=To:Subject:From:Date:From;
	b=U9K8+CPJx5acQqhpzOJw/y9UTollYBTWJ+a0BKHeJFRYClfQ3G/fB46+tTGdFPZke
	 Y2+nOyFD5lXQT0xbRpLEjEEtO+USmlGV6MtE/WFRgtMKyriKP1K474eh1j+GnytQGP
	 YciARMkzAD6z4DCdzpQhCiTwNyUWugt4tqYg4E3dVLPkzQb3Vok+Ce3GUy5h5/Ffx2
	 8iqGcyWCSDIyQw4cELH9Cgu9EpK83sYrjB/JQY5LKaKZDPFVdh7EuBedV9nV8a5wgY
	 Uts6tiaewa9C5+9BK5xRGwrgx7xCzZPvbive4ChTHy9sfWrcCp43cpJ82Dkg6PVkG2
	 dA0NS0AbHGfxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE95ACD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082487368.18288.888205223549404685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8ae89ba20d71ec440e76ddfc399d1f448b2ee67d6af6ce44517bc7db458b6f
Date: Sun, 07 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780824873
