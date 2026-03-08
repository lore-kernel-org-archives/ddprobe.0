Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9AA1E1C02
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772954694; cv=none; b=U50tDLcYDTZSCdhnUe6HXLNi3tyHkLajwMWVR+7DY675/Q2jzaf6ovNsihmQaUdp2TK89BGn8sg90LUGrlYztyL7t7hGnzPxr5dF1Ijt6UeLSnoy0KlTrF7JqZpRrKaYih+gXNUTWTP/GVfNWTuzI7gBbrdXmQkI1Ug/nV87jxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772954694; c=relaxed/simple;
	bh=/RObE1qq4kf/wdDbSl64FaIV3AdvECxhY/e5CZO158Y=;
	h=To:Subject:From:Message-Id:Date; b=F990R3SYa5PRgIIpgpQMABuP4fN94olV2Q7eTgecREt8AarL3EGh8oz1DI8O1Xs3BVDXjO6rsRqB9sE5beW/y2IEOQ7IgoiXUSYbxG3RtfLMd2cdbUmH4s7k210SOVB3w99G4YaTb7LYd5Bp3KKyMio8H5KF9ravZYtTWKUVfPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU8O8uUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU8O8uUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E03C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772954693;
	bh=/RObE1qq4kf/wdDbSl64FaIV3AdvECxhY/e5CZO158Y=;
	h=To:Subject:From:Date:From;
	b=oU8O8uUO2yRu0Jd1UxlYUGhZPgd4G0O6Q6sIQIibECQxo1Dh2ByVTsudc6BmVuMK2
	 HBe0FIpxQ7wS4DPWEtzZhLdcI26brSf2elqI04l8+ZjOZzvcaifl9jtZPnJbvE4xZu
	 S2bg03GlMtRkTYk4W8yaB48mdPzvXsAkXGBZ2yyPBJN4STddE2Zz0SWp5vz/IkTp7L
	 jKkS1J4aNa1TlcRe6XNUxNV1WvWygk/ywXWrigIwCKFXFHqe0Z4f+sBb+BSeEGGAym
	 RcXdRlvzmG5PwcFAgrnW/ITmzXlzPfIG8RXARcBNT4MrPvhCbNcZCgoCLCV3oI3Qa8
	 1mI3rXF9fD2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F019F55126
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295469357.10285.16468192429024774411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e0ebfa9a814156e9068613eb70dcaf32e77698df4d6df81995e9e31a8f6186
Date: Sun, 08 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772954693
