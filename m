Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E983D397E86
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774900494; cv=none; b=AZe/yT20/k30I9xnJf5vSYmzeq5jp8HzyhZB4kvLJlUjLNYWxwK5WrSuwKDwxRGU1ikpK9+9aYP1mUvbjZTKa7/v/LiDvsPol5atV2dQI5QZojN8iieUBp1pAUKQJxOFU53bUNdHPjarmBUW9a4wuZhvvuWw7n4UqPFDmDMvONM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774900494; c=relaxed/simple;
	bh=H/a2yWcLCtXFFxi2+4t+dyfxC/uhAhohCcgq1RQbnuA=;
	h=To:Subject:From:Message-Id:Date; b=mGEezATHB1bt3DTEpb84BxwYzPtE7h5qiJFVauHwxmz263q9SIULb85iHPTfri0Lsi592SEOElfsysQJ8vdBhcLdV3AH8K2QovJJnyunHHspxNb6+h5ogUkIYyATFHZa2pBjK5xGzl8rmyLweP06ZH4+UJGu8ZiE6ZUqXcxc+1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVrp7+js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVrp7+js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C03C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774900493;
	bh=H/a2yWcLCtXFFxi2+4t+dyfxC/uhAhohCcgq1RQbnuA=;
	h=To:Subject:From:Date:From;
	b=HVrp7+jsy3A5EByu/Hq+XEUmkL4NFtaNirmXeA3hgF3js4Ynm9F1Cg6MSOPwGFIkD
	 5OI2P7dlncI7JaxP0iTj36A7MozLp6LBQvHKSMO9lCOUSHoUosmQsl08oFztJ1gXk9
	 PN1QtYRZ5uLpwVMXK23LKfcQGuihV4GGnNRWArOoYUbTzpb0OIqY2n1cg4bpL+Af5p
	 /fGV99c8scRczq8YzzY3ZsSBSMUS5T4asHizN9AakRft2b/HGQF6qs2uTBxSWFiorF
	 eGxK+wgDWdEbVPhv4X1aTOK308nkZb8EqEOGhZEWaOAsj4GfSusFuJR1QAxDxgfJLD
	 AuPKmy82bZITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B341061B21
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490049358.22524.4899120718618238765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27ee7a3c39418aac307c9a9a2415d8eb69d275145c063fa5cfd7489526b581e
Date: Mon, 30 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774900493
