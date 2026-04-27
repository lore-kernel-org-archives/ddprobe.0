Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C0470836
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777254454; cv=none; b=WdFyzhm/SIpK4Sh6U5dnhJt80a0risJe4NeUlsmfnSTD2lWkWO6W+75iapMKEc5lfirEvfB9h7lNsnkQ3dNnOzdga72j3+Fiz1LcXmKoHtiX9D9wXuyqyl/E/Cz4eq4v14vNcImBWGZUkx4DQzUli4sokPeZX0izbH5WvrqMb3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777254454; c=relaxed/simple;
	bh=GJad/A/dlWkCPaRR6s5/nQ6Ukdto7u7bG/I7D7RpTtA=;
	h=To:Subject:From:Message-Id:Date; b=LruYTRlqWEykZvq0UdqlPvIMW/sGH8Uj/DE7or2QCruDVXweRCojXkjfNeH8vbl+xw2OnJFW7jhSjNaz+9AO4MSYOxe7L/HxwInB0TUXghLLpJa0xr1enX14DTqKXIDbP3taYQWNbzf3LnwgK1Fc2BfB8qGfN4epE2Cb9dtAqHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0nXESgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0nXESgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DF5C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777254453;
	bh=GJad/A/dlWkCPaRR6s5/nQ6Ukdto7u7bG/I7D7RpTtA=;
	h=To:Subject:From:Date:From;
	b=Q0nXESgLZAlo1V0ohpTXsM5T1BKPp/MWwvBcTE7yDAJ4FlLrpsWp1Bqk/eYeBGbLT
	 riWZc6XlVYAJdcT2OVnOxqytpIq4E9ehKHLznzls2xLX/UcmeBuTD6iFP8ga4LzRGU
	 uzhRfQ1NxydyBovQGgFnnTijsIH4/eCDKHrJHb8diIGvhOAXPQFVmTM0mvGO9jQVeM
	 QWg6eJUemqkS7ARWDuSSmc7rKs+zP4PVhin2MbEGuLKFJIT+AHVisdtVjw93cZi83K
	 mvNzdJj3a9Ps7rWp/OEKx5zGEZviJ58+6uziVD6i9zbUyamPgGtNQUAZv1jOXNvl+o
	 HJOzoWbKdPB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCF1FF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725445368.12131.7652204891297783090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bc8552540f7005eae72a537c376c3b8bb7709bed98e8ce1d8885df36910349
Date: Mon, 27 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777254453
