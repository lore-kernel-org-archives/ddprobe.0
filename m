Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387F8A41
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761965394; cv=none; b=ab/AJROjvVT6zwO9++TvNdGN/1bNrtN4D4bfspBVvFJQgdaY7UYROVzR7yDIn0DCv9P8cMoN+JSPPxMnoa3O34HXF/MuiyZqzNm1iHYiPnq3tP3Dci218oJpElkwkE3vdhALWhIBSkWzGW4Q9Lw7BN59Zu9rMaCXY/S34En4B7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761965394; c=relaxed/simple;
	bh=NVwvENx/5LVJkpk3nEZly4KRgS6dGfEilx1DnH3KdPg=;
	h=To:Subject:From:Message-Id:Date; b=XRjPVjr9JD9b69KhK+UucneBYPnNK1+u3csH06alXy77BO46c/5txsnyUBmD0cNVLn77o3CohBN4NZ8jw+qaIcDAFjJ3Y7G31/qKkMKEFnjEYCScd0fVLh3+OolzJo8B4s6TgNAzTu8yQT3SHMcKOxGsPM3M2bH3TJ/dadUFaus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k69K/X+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k69K/X+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C7BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761965393;
	bh=NVwvENx/5LVJkpk3nEZly4KRgS6dGfEilx1DnH3KdPg=;
	h=To:Subject:From:Date:From;
	b=k69K/X+Atz4+lxTZGaZq90yMT0g28f7rY6NKifSjMF9JFE89b1hdFazEo7dbM92Qi
	 13pi4/ThJhArTkeofcLUhE5vg6zCXx2lj0DE6SVgz5lvEsCUFsM3S9emST4g3NqDc0
	 bibZB5cPJ7bvmls5DsXBT9BaczcYp418xkF9WlhqZNhq7nj3+nNGgjMhFwdUZutkf3
	 leuzxaeYjoXUEoFdsj3Q50oX7pAsJJzUu+Ld4HQZ+3ogmACcaMJwkn/0fNqhqD04cM
	 bDCGzQUrvQGbcQruLRduBnVSNlYyVSBbWD1jvmG9fpHQRVauO2b6NSPzQCv5dOmMCK
	 QH2QmAitP+3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971AACCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196539361.32112.18110862647993051461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0e7a962d7d342c2a33107adf6f96490afad95a6cc981e3f4ebf4ad10098e95
Date: Sat, 01 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761965393
