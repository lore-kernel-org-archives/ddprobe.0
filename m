Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5150A4B1E57
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746830994; cv=none; b=YIlhIYTadr+lwNRH9cbF4nsGmKr8SrGYiMSoLLipKmYakarKxjGECNrfzqk8WuQUglm43v6Z9YBQC9nVENG7g/Xu0ffqOi60DIskFfI82/VY4eV6jypQQlGr/Wj2iASY0XxkXiE8hurVEUUkhLRvkvXuSJvtc9Y0A3O/jsyi78g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746830994; c=relaxed/simple;
	bh=Ep4SPd5sehRGC5MfBVr9q/7LYARVu28PsdfmSUkVgNw=;
	h=To:Subject:From:Message-Id:Date; b=H8BwrTJMKqbmQ4ebUowXA+oP8psA/PO3bHhloTn+OZbQwkT94ZeUCoVRXT6DzQrL60mFCWz1YRUWiDKVKe8dZY0OUtauQpuchVFzEKqAuuhBs7mwfKBXVUKeLt3JiLFhgr3uBibpTDHmuLso8F5L9QrzfBnl0lC5hrqV2nC+V0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiB+DXDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiB+DXDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746830993;
	bh=Ep4SPd5sehRGC5MfBVr9q/7LYARVu28PsdfmSUkVgNw=;
	h=To:Subject:From:Date:From;
	b=iiB+DXDsBaV8vSTvD1V/vkDdZSvYp48avbQ4c7emO8cszqnq0vlxowPLhj2lyi3F+
	 xcKVJNXmzJtDE+m9qUQ/Laoc/jKyQR627O3TAKJuHYNHfuvkfGdBcK+KrqiFmbHcOI
	 hC84IIxEypdsHH0/gJxTTY/izwxo3qjt0NU2VQN43dDBNOx4gKdzF+Goz6K0KgzpQt
	 xmrHoQIU6xF+2eTYSoRU2l472uZlsvdD9VU7WJDaMZjZ6XwEVJQCGGZSd9baV/2gGP
	 XXcEmnvv6HFWEp1zGBX5CJji69EsxCNdw9b7Nq3Q+zW1PDzxr5XitgfZepk/VbLiYx
	 ZHZmvleIpQvPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F484C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683099357.15774.6459611032943552763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a533f2aba61042b81d2456dd295c4f8c5685658a59161fcc127e67052940ca
Date: Fri, 09 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746830993
