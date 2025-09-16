Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED7A221FC8
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757996394; cv=none; b=OoSISe0Ltjk+ymAmDMfl6rEQLBuQkanvVjSxV2TCS3OX6oOOS/ueHCeD31H0+401/BdnEgen4szt0D60IlyEigIj79nvYyxO0nU74P0OlG2s6zizY3YP48ZagzK7BLYnzC9PFijW7C7Ijg0tKrwOb3OAPM+OmbaLK7iRlIyjWc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757996394; c=relaxed/simple;
	bh=sx3chc/nNu2VgLDpLxvRbDPq+fy6OSptOtkTtA4kPXQ=;
	h=To:Subject:From:Message-Id:Date; b=ZlZIv0V/m3Eg5bDMS/vRTpRCrW6fmwdA37Q57VcBOTH4W+vTKDEceabML/rXlgtHfAGzJdWmRlvoacwdX9+4M5sn+xqvN3hVDjvZRoDyeSkhJ6Pil8kOFXJf1CGK++Tv4sT3JSUqHdDGO0v9BhpFx5lbWZH3EcgNG9hUHK3vl6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvFQ+q+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvFQ+q+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757996393;
	bh=sx3chc/nNu2VgLDpLxvRbDPq+fy6OSptOtkTtA4kPXQ=;
	h=To:Subject:From:Date:From;
	b=ZvFQ+q+gaXtrVx461uIswRDjt0J5415qZrsRntf32uQfScq+BWj+IH4EdNx064Z8g
	 reZtQNmEQM6+J75I0Lfz4mEOT3gZvK14dELfhRHl7Z44o7rPozbU4Y4PeTyctNzVys
	 w4j4X10adPzv6JEsnRp6hE4gURU/EDa9kK4ZPWyWlcsH98Cf+SENifTQGNbPfvv9m6
	 loJep886DKoNXLxMcjPj7+WO9g6ZXOCgzjKCEBwK+ov/Eb32tAiCpRt+TG62t0VEzJ
	 BIpnoQsjzwbIOC3IWlrpWRaFwTwfm38dMZBY69A4AALBBiubBfCq9+IlvBkIjekB3N
	 kpPMpXdPkB16Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA2CAC587
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799639360.18221.9772386976685445888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c46781b3e078085606886ace1b6ed27be0d73a792f4494f902cc615c338b43
Date: Tue, 16 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757996393
