Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E8F15E97
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742651994; cv=none; b=j60QYkMfrRu3CaXvImSG0wVqf7ZrK0bOdd5t0I3mCROODaSg/8zjptdSp+rY0THwum6acykZ/X393eG13Il7Zoj0k4/hG4fY3rWzPw6MS5SPBZvPqcvpb4KQAHn6iFlyLoBkI3S70Ymtd2BLG/t59BH9M02BeGi9o5n7e/PB/d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742651994; c=relaxed/simple;
	bh=wD+AnOq+VhWd+HVHRlv4+CCuvff4qb2nRD8w2WtLnWw=;
	h=To:Subject:From:Message-Id:Date; b=qjd0iT1qldofj2I9msqofJXtzYIJOpcBwxwyeja6Q9Nu7U+so7aEtlYTiuGayDOOhyqeIzwV58EjqasdDBkRT+/x+kvRE7VjFBciuSVKhc96Xj/RQcmjqkbNjSezEFjBzA0V8vNptH42hZh2A4ht/8Le35y/8g2w1XaA6/p/3kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egxM2hFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egxM2hFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB44C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742651993;
	bh=wD+AnOq+VhWd+HVHRlv4+CCuvff4qb2nRD8w2WtLnWw=;
	h=To:Subject:From:Date:From;
	b=egxM2hFCDStqtTCk78Jt7uxtII2Ul48dHbMVFvSHE/Yg6w02XyaW68+XNQQfP143z
	 StItYMgC3RRVuzQ3+whBAH2YOXg2G0c/o0WQjl54krNRx3ENA/sdBojN9d0HPnp1v+
	 JHf2/pH0dtukZ6uT7xt/JoCo4JxGySAadTEZABcZ3FcibsihoNXyNwZKbICtJRT2Pl
	 JJdGpAKoOhowftijmAFTRxXtI5zdDPMDTLwUhSdomXyM6TZ1vq0O7fk3U2jl2mRGDk
	 9HhF62Gg+VN9ZdO/Ar0dM6Qxe/nj5o8oiZHAXQ4Mf+X3teWHlyobmNJJ1pvkgizMrO
	 z7SAU6joc7g4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5A4C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265199363.13386.17765812268630109883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8e5fdc97d4292ab37843bce56801fa3f0071cc4cfaacc777a9cd6269662a49
Date: Sat, 22 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742651993
