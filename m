Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D053D76
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712111897; cv=none; b=oHtlPp5jxaMLi7l1iCmbIY7q3S7BSoXl2sNd00k7NPa/mq5yS9Is9PHwTqELtxdKgn8CNT5ddyTN6o9/2Zuo77c5KuVYh6MyCOq+hV39tHVxWa+kvz5RIJ7o0kU+FT0xX4NfsdTOrTqOqdCfI5LAcAhUF27X2he41SNse7iaLBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712111897; c=relaxed/simple;
	bh=yqIRfbA3gP8euZRxmjQr3FPnkQMchMySD/nSWBImW4M=;
	h=To:Subject:From:Message-Id:Date; b=FkzDCoMi4IMir6INrFHdYYefxQSou7J8WgJJ0S40fTizN2AZLEb5aFheO7NRv+oTebssI0O/6/2KzGdXotj5fSmHFg+cuZPdJNbdOoXYXWpFd/HQzLkdZ9sU1wnvxVQCxKMa3hB4l+jJrIF7szX7FpqewsFBF9ggMHJKTrzVtCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=albV6pN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="albV6pN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E19EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712111896;
	bh=yqIRfbA3gP8euZRxmjQr3FPnkQMchMySD/nSWBImW4M=;
	h=To:Subject:From:Date:From;
	b=albV6pN88qYWQqxlA3Cb9tJYmbtBX+vqikldb2PBHzKPDAZNmEsS86ML2mWBjFDMa
	 S3tON0Q9j/2xab4FXCHZmIef/ODXscAHbi79WiXl26VKqMl/eY1MLTEHwJEpgodRvL
	 SgJ2OieGe/chpJ/mtGEPGjoQejvgTLxF1+oFaDbEoR70SPuKa2wXH0qPBChiuugGfO
	 iwoB2bGChuEI+ZbZyjN4Ct/Oyq2bG5RTJS7PUx6noIkT6nLi7pH7bfjmUA2pv/lZA+
	 blXebbxuIKda5v8Tzm0rDvGGiZLoePhPwFDkKu3WYMT6eFUO2XPXdUfFXx1SjJXmDe
	 lFGS4ZT2MN1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A1BC6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171211189639.28846.16222228675880937005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ff9f08d7acf76c50bfe8b349c3b76893598e042ac62c8b131bc2c3576dd664
Date: Wed, 03 Apr 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712111896
