Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F691465A1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739861934; cv=none; b=bG8JSbsiz3Wuz2Qjp+M1Ubx0ueYKA65XVe5oLU1sT59vbYEBlkxj+SLRIaHJnSsdWDBJP/kuyC0JeZAgaCHBo/nAernUwPu/uNKcB/wPE4CZeCmiiR95J/dE9nHLv0g1kfiEnETF4SPQ831Lh8ROs98j82sANvrZD8yG0nxD+j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739861934; c=relaxed/simple;
	bh=1TpYt8q+I/EW6/7ejONZ15mhjzRy4ldm7dO7TVrR6zs=;
	h=To:Subject:From:Message-Id:Date; b=lNVFjS99lBUB3MbGN9zBbUfLLx7zIih6uo/SjWnZvyUoL9oo7fNaxgKqDlU0wgivphnhfWqFXgdSu15pC+mpQ7kfZq/RvsBa59Bu/NpHt1cbqus/gHPQhGlB6/So1jRMskxIRZN8q/xv6Lsysx2paUwsJCCm0i2mivVnTKWa344=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJszy2Fm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJszy2Fm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1E0C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739861933;
	bh=1TpYt8q+I/EW6/7ejONZ15mhjzRy4ldm7dO7TVrR6zs=;
	h=To:Subject:From:Date:From;
	b=GJszy2FmsRft5FfLoDSoj6/ZQGHaXf6UzcDeydYAwP4b35DhO8A/r+t47ZKwzGmW9
	 yBQIlwB74zrCYS4aJ6AvaMeq5EehxNgTFb8RDw3aD7TWBGLC1Gg8dIhFw0lEJxloWC
	 gtOjP9tyJPQX55baojOk7s677ckyUaT/7k5pbR9/C84Kf+BtUK612TYuiDZkVzbOS3
	 li7Iq4PzJCsBhnb3kVr2nZAPn3CPEkP02WIlRHya4RN+r9SZ4gAfEFJjiTXPS6vdsX
	 aeLxKRZjV4ugo8kavW9rPka5BZZC9n/mLbG5COFEyRxcd673apqBF+MH2DNMEEjE+Q
	 27yIEBw56YK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C9DC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173986193360.11929.16125980662239060689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f728c3d612e47b6c0a88280c43e89388e7928e42107e27bf18a131f0bc3db0
Date: Tue, 18 Feb 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739861933
