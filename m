Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8852E7F3E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774808094; cv=none; b=Svj3V5XLxzMAsN+B9vn/n0RujOHcqp5tvCWQt06ncMaNHXBteUvXrmPK8kKVJBj2+QD5zdL8DYulUEMOlZsGMDjP9mnKmthOZUWjPT2Z95/U/h290alqZahK7UtNZ739aSLnDGfxDvVA1pjE1R7JpJ6I6rVxLXm9HRadKvS5UrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774808094; c=relaxed/simple;
	bh=i5aapCJLsPoc7pPMNyONGpXVwN5ouW0s7kPBlHKkWsA=;
	h=To:Subject:From:Message-Id:Date; b=WMAD0xXvJK7kV3wXKPwwoHJYVsKwXNrECzVMh5BZoU3moK7AEMkfA8yjpDM0MfjSGtHrAuKEoqcWlaenfKGBWPELiPUduTVUmv2C7R7DggmevV9aMetMCFj+XkfJwju8FTAuVs5lqO1LIDQVm27RbKeVSAMd8Hkcc52Dh5cHQuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3zq35t0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3zq35t0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99BEC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774808093;
	bh=i5aapCJLsPoc7pPMNyONGpXVwN5ouW0s7kPBlHKkWsA=;
	h=To:Subject:From:Date:From;
	b=K3zq35t0QDQRjmfMxwKl3+gQoJiA1xMK75nyhB8FaYe9WawwKlT5eN2LKA4lKwr5K
	 p6/0zQi3Uz9C03LsxdRR0H0DERpZWpPQw1oYFvAhR+usVHCaDODa2moNoF+n2Ggnwy
	 62vIiMfUlMcpJp0jYHHQ1Hz6vC8EAOhfBxA5RZsZzq0hmhqxR39CxvVD61lWwKGHwJ
	 RyMZkHBdDZGwu0LdoKpAEWOSfDF5QK0iks1wKi0o1kku1CsY4zhPiGSZUF7XkOwYOR
	 OtRZzBA1g87hdjn6v6Bh44rEUEbCSzx2UGUSf/F8odnD6qwsi//UPy3ZoczIzz1+em
	 J48hWCyYtaMeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E88F3D60E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480809358.20507.5707292499938200734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91bca49e0593476b82bea95bbef684761435b08e78c1c62cff157b9c5ff5b03
Date: Sun, 29 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774808093
