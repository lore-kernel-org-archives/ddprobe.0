Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC362147E5
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760662194; cv=none; b=sn6lmUEu/w9m9hCGHs/qx/9AlJ8+uDYzXd2Crzy3DdkqFTn9NxyUEKttGWEfX5atTrvCaQF6n0TA7ZuwmEu6hn90jOaDHicLWh9LnKIwmR7hn0RzzlU8gslzgUsVLCbPB1fHxa4QzYiPNw2RAYA/edD4Kr+1ehTahbTMY/C/+Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760662194; c=relaxed/simple;
	bh=/NwNAe+9GS5FoFed8Piom7I4uFHNQCVAwB+4kxHuHrg=;
	h=To:Subject:From:Message-Id:Date; b=bf3epNpsZPIvhbiH1eRp6mGoCHMrPSxD2ZGKoQer+jnRZrpGBDA0J7cOtC5qZ1de+yVsNB0TPW07uBYRxupt//7asS8/2Vq6TZKaQ2j+tLKRmYLRYo0rMiSQ2IO+8UuXLV/swnvjK1tQzNTDrnVt438L28l0rGMImTqpyYYSh+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffeORbcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffeORbcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD773C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760662193;
	bh=/NwNAe+9GS5FoFed8Piom7I4uFHNQCVAwB+4kxHuHrg=;
	h=To:Subject:From:Date:From;
	b=ffeORbcNSSpxltXw2W7dp+MrW1qdcD2106eo6rx62bWsC4YqpkjI0/BnaLoAVsAnj
	 0edM76T5A7k+Rm0OEZ7JMXiwiTwHeRo962BRb3Dq1cVlqr/jMoUAKKl2qf/o5p/q9Y
	 TEsYzVx40Zpn1Iv4j3KuuzVC5Jb8yphP+nOLIdEYk4XCqi8OSlodcy+8hJxmfSAYUm
	 Rd3my56UJua5UrHBqx205x3BvC/i7WjRNU1lzgnIHfcJE+hcRT1buHq/Aat9005xFU
	 qRIm1PWrcA3yhd2AODyvSgFylVZfFRJC/FPh9a/AS/lVk8uIzNvNRvYQ4f1nkUWb4w
	 SXmwDGkWKq/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9791ECCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066219361.12788.4765903382244729485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899fd1ce6919fa237fb8c670787aa981bb30caac3916b3ba41e34faa15a8b017
Date: Fri, 17 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760662193
