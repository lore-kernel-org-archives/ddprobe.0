Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C92D023
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747686594; cv=none; b=BfJdsRge3tz6WxsPiNjdFfLXFtPVrvf+YV39Us8F7ZRlldG+6Fo9ZlxUpEQREwYJppu+6nwY0RwN9j2uiuWVF6PXa+0av92es5K2Mz9G83C+vQ/StzOI7+h4h+SeT9GpqP/cEpSMqR9lmAk5pweK/HKalUaUeUJ81P+3tEZ9sAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747686594; c=relaxed/simple;
	bh=Q4uUSC1JevALVuHjhLz++Hc2cw45Kpo1ODzYadBDRDs=;
	h=To:Subject:From:Message-Id:Date; b=EVwQt29Mx0yEo3fYi1z1fSftfbLimcZESNbyqPNiBqNg8RgW2Hxfl5araWcNHDdeqeAWBgMwXP693oMpL47jjSKXSf61X7q10WDB4AJYlCv0B98PMU0MPpr+7CppbmeDNn3PBYCVblk/y6ZPNB6U4bwT3ztDaBFUMm7oA6yyVuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Apk1PrgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Apk1PrgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA86C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747686593;
	bh=Q4uUSC1JevALVuHjhLz++Hc2cw45Kpo1ODzYadBDRDs=;
	h=To:Subject:From:Date:From;
	b=Apk1PrgYF4+3C1Q9hWf5J3i4DQetXOXp+hjCR8MctVZ9J8NJ65VaKEq3ko/wyxFXW
	 MtB48gw3q2MbiTyHNY2F0TseF9DHS/JxquFnNSe8G/X7QVFzVjC5Bso1osVuUUBJk1
	 19tLhlFD4f8SEDU1K7VM58Erhd3Luu7t3FI5eD/DXZECsWi6xxN0S/Imm7Jd7pbfe0
	 dj8qtOSXzwfumRWZS+4vXHqALa1E0d/ZyKdikYXnHyscGPYK1ZLtmB1hee1DYlBUe9
	 hQ+S1GG96SvwkwGidZIDY5x/ng4PAULkEo6h7J8ny7BovfV1Yiyd2IoR/4uGqjoSr3
	 YP9DMNcvorOyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F339C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768659357.11981.6974618787122172383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe37d0032a0d0022d827fd9c60809389025b77823d385c428fe2d2459042549
Date: Mon, 19 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747686593
