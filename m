Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C3830C61F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760684994; cv=none; b=PZdP2IwDJ/J1+y1m0hQRKbUVZqYMdu0A/CeoVT7aQW4blkFKnhvdTRLSL/2CprAd/S0JC3ZV7qSo8NUBo+ZjLTkqpP0QhUPv4LAz2NVmToyfYenF54CCFQ8dhxid9nxHbk7+sLeJz7T1JP81hNwbQ+k3Ltlkpjr2lfkcWRTlX6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760684994; c=relaxed/simple;
	bh=9X0zmjJWrtQBv+fXkiziWeytFCKIWSKTLvLxVFidJrM=;
	h=To:Subject:From:Message-Id:Date; b=Vp4rYGAtuaxvZRDS20kOXWglaaBjcIfUdHlNNLwc0h2UyiFGiW7IEILlC140BhATF1VSknoR33WsXuHAp73OYv0PNppthvGD0iqgmN/0pAfSUAqHMycBDZKlLs3d7AjiWHORDJZBX4MycCqEaoiKW/hooW/CHMduxSQ5r8GhbOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbxMCg7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbxMCg7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59F7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760684993;
	bh=9X0zmjJWrtQBv+fXkiziWeytFCKIWSKTLvLxVFidJrM=;
	h=To:Subject:From:Date:From;
	b=BbxMCg7ku/sdaH6b8s1o3M5p1S4v+SNSmYnnBFMZfATnCIfD0k2qm3dYph+NcJ3y2
	 4WQcjIdOGkd5TVECNSKhyPoB1SVblZe0GULH4Cw5WOCCYWFBi2ttdS+DvpiJDL4+/v
	 EKLdEo3mo1KRs9rdfhtcuOUsHWUc5QvpZe8zyCYJ4agNarPeIfKLP4MY5RKhSzgTtQ
	 ftgmXmfYgalVRW11hxIZdRLgVJY0LFw5spodUnNfNp2HSZReWvaGfGrjNn4YcI3BK9
	 tx2iSvniX6oQNLaTXwyPX9QhcUO3216qJ5qcLSHK5MekRQH+b6Ll63OHmvCk6ev/nf
	 Y88T66JNZh0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C5CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068499357.21709.13322274912586005361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99643b947af6548b616abbc37814afda5839c0130073791db04b59d7e0e2f92
Date: Fri, 17 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760684993
