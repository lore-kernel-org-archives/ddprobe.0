Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1242BEFF3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750246794; cv=none; b=u7S8i5uE/Q2CnAopnmnzi9DLQiqr67nyT55lHpZaIl9ZOepSIL5e0uYh8Xca0FtmRNNU1gcWhoqiJKbxfitJ3cKK9WfX0z33VFAyV5vSSwNa7H0rdUPcTl8jPR/sxOur18pOP7sDUVLj499Bi5ofKQqrNU+wRXBCkH8d5lGW0JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750246794; c=relaxed/simple;
	bh=C6OKT2PWPm0aOCxdmvQEdcUj5d9ub3rooA1/Yyrv9Pg=;
	h=To:Subject:From:Message-Id:Date; b=Ml1Wu1SucU6CdVVg+UBWmVtfcmcqGhX0lQIni9I0/bB2KcMP8mbwpodv4bQ/bC0kRnXRGSTFr6X2VvQxyi/cRqXsXHGVRg0z2mhKa+in3ybsDhNWK++LzkPTIGqRJfz8pUTwuYF9Il6Bnl7W9yI/vrdvpof8KtqLRaALDYe+mGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayQ68DhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayQ68DhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B33C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750246793;
	bh=C6OKT2PWPm0aOCxdmvQEdcUj5d9ub3rooA1/Yyrv9Pg=;
	h=To:Subject:From:Date:From;
	b=ayQ68DhEDz/DrTlb2WSibZJ6ZeSEgjJFkOq3vCtAYVJUa4xLYo7DK5fHJhTF9hhNV
	 +eYhDEbx8Pov+DL97o4kiIOFhWRnGXnJDhmpJbD8zNsQohPtMtrVzRCf2KYLoVg+zv
	 iFwoPMHUEpEuM1XK39NCjIX/5twmbWZ+tQIeyOB2YS+KicNJUNvYEy7Ncf/f5+ZFyT
	 DBKMyAEhPeiIQbBT6FVqG+m8s2B3uYdVkw2UU+5lim29P0M0hrkh3XvPuZSGohHMoj
	 QRdml2IfhEms0a5Xg2WW275uwBQc5uo3HVhARfY5JPyOXnho1GhqJ0PKsVz4hCu8WJ
	 0GLZ6rMlqJb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EDBC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024679359.11435.16597672788902502894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ff4071e2c9600564beed6ba40c403ed114eab9f97dd389c3e8289682239525
Date: Wed, 18 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750246793
