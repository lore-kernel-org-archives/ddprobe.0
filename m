Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9B6ED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9346AC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673074887;
	bh=Q5RQ2oZycaeM5UDNt8itTmVv+9koBivYplqB9hLevCE=;
	h=To:Subject:From:Date:From;
	b=UebxtUbw/Snd3n33bLKY+jYaO/SAjV7ReETm6xNx+WQEl4QcbOvupiPPBD/DIEvn+
	 Cu9w/xl3VnT4SuPngNw2FWh1NXebK7hKAggmCd3uoojr7T9IOFvIZuEtm3M38jHoXy
	 g8t3E0PeKdUbUVrL+eaBhfJF05jt0P0M4kleIE2cBWq73H93zDLnC/FqBcaI/fVvue
	 BbK1i2QY9Eu5i/PjKZHHd69Kg11BIxLPbBOvn/ickdTBeHoyaBNQAZeZmfkxUF54TZ
	 w46cjUufGasPJB9efgoGDcXxxWdLOvcq0N5GLDLXOhHcX9DFMU2S972OrGCz1K5ng4
	 2t8uKFlIHDO9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7261EC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307488741.26602.18281930449931034671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de06e5fc3fd4b12ae1f272a7716e55b23b56e7e5d4bec2b3eca65f32b26238a0
Date: Sat, 07 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673074887
