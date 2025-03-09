Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B27E1A3141
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741532934; cv=none; b=STpUun5VY5rM8ZFu7XhfDbdW57TG8OZFczeZ4UEk6y0rWVuYs7B1ydI2Dz6RpxmsankVSFHhNN6nnSrsrUwo3Nt86gFPsYlvt/tajPQl9HjWepftsNkBZP/WnMjs7kEOA2VnvmAM9mX7N4KqJ/etVyimQtATEBPQJdDTUKVjE3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741532934; c=relaxed/simple;
	bh=hyYGE7mpHZ6qnDEeOcwPC+HeZ+EaKyRykYbP/2vLIao=;
	h=To:Subject:From:Message-Id:Date; b=sje669hN77Dy/nFF9EJ/O/mEqsgSjRSfkrPQ0lpQK3KIR+W+AiOCdCbh3tgUcYIE8BiVGnxYjKfwHJTm+DF4tCptDS64KOvp/XUUvfV/W5avc+itV5wzLKmhL8OmC0RbYXJucizfLwqlS408U1Ro+2EVzS+f2U37ttCJVS5m0rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfOHwmSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfOHwmSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95DEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741532933;
	bh=hyYGE7mpHZ6qnDEeOcwPC+HeZ+EaKyRykYbP/2vLIao=;
	h=To:Subject:From:Date:From;
	b=LfOHwmSwxn33poM5VcNi5pgfYS2WUI3C0orrl/orCZl72Y3xAMe7CQe6sTeKMqg1U
	 MKkBdX6LDRf2rmNramOQhhWT9P7Opidpxoj/gA0IuZ6i5s9ioA6KsvHmIlxJgZP4NX
	 K+9nnewQHXo/jC8p9uBl/LFKEWRX3/ffnasFM1tvPpHIoui7yHDB4Z7Nq9ALpqH05v
	 lU60bGFQ8tpPvbb3eKDrO9+CPe9orB5thwa6LoZD14+sXT1ph04A+ILZ+wMzVHC2OB
	 Ua69V+bFixxH8D1GtokB+6alZ1Ui7oHwtnz8nFcQal+c07Cg65K4jF3CP2ellDJZHh
	 iq2wRx9myo6sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF7C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153293358.12633.17083855936738087947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caef0486806814e34411b66cbc32ed6bfcffc5fb44357facba78e85475fde8aa
Date: Sun, 09 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741532933
