Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F24137998B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784311714; cv=none; b=J9cytHha/6T31UmrN9ubVPad2ToPh12yaWd35n/X6vJ0m+a3gd+pWiFAB2lzhwp7yJdgd/gxOxEOAxCUNT6F6qqdLalvHeVbpqKKW1a5F0RlnEnr60dXlXx95LcaCaTRPXlt+rgP6Ingq6FVrdhYR+6USRGUuWWr531eAVGfBXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784311714; c=relaxed/simple;
	bh=8c0eUdeuI6rSYagMBytCVdjZQqAIcUGptALHnkV8OVE=;
	h=To:Subject:From:Message-Id:Date; b=m9uj/Y3QcC7CvRN7Vihz+6x5DQWSTNVXaTVV/PTC0FU6NCh6fgNXS7fcdEqEGSSlzt1LKxHbrbNDYysd9exzeEKsYoA9qzGy5673a/PNu/iana/h+aABnvD2eP2nIWnMmfEfqEsV8wBpjVkITdxcgZUNcoep5Eriel+pYgnhiZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fY+lEkw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fY+lEkw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A10C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784311713;
	bh=8c0eUdeuI6rSYagMBytCVdjZQqAIcUGptALHnkV8OVE=;
	h=To:Subject:From:Date:From;
	b=fY+lEkw2PFUA1Vru3kdWKg6X8DtZueQfH8cZuE/DTOju2j8Ooo3PgQIRilia5eoEd
	 L0nMcTgkLK85GiaJAPx1TM8orBcdxFFfb46Y2jn8mq2Th0R+qgnRyHDh3c0LdrzTsc
	 TNPqjcJHQirVvc1PZ8mZ7jIubERbWgbRzdTNHj8iF9tiX0sjlBXBmkj8jHMNIfW6iq
	 tibd6OtcbIIvogorOYlF/xDMkS3LiSeMSFQRcD+Q7Ckh67tQyCQd/ZGv1V+tm4E0IX
	 /OzhR4WbdL5lwmxm21Lm46xmSzpn5WxjbFX/itLoyiL79SKLTvkLb97+8C9fCJ2LZo
	 0huhNkFSvE3Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7A3C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431171370.4671.10896092044849587367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a059e3123f772dfd320fc275e0bc570513025c789bd6fc86edc0bc98b673841b
Date: Fri, 17 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784311713
