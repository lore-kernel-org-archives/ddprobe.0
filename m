Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A092561D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738911954; cv=none; b=lffbNiArdlP/77/3Yq0RPkcSfqkB/ncs54Wn2fgqYjQehw31nW+OXmElITdrSAWFTltYMIzvl8AtPlCCmc2fpj7d0b5nRDxCIFC3YMnHsti8aG1GtVFsgbjdI2bA4g7CWNS62TYICoIemsR81f9zEOQbA2nEdfXZu+xd6v6Yl8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738911954; c=relaxed/simple;
	bh=9eMZ9Fnq8Ydlha3+qyXJWh6JI9/+8mk9d3A4vL8f1QQ=;
	h=To:Subject:From:Message-Id:Date; b=qjKBfSKdMk1nts1xU4MEuRw+aWjU/NAHj4si5nbsvprNhh+e+Q1+0rSuXdR2eY/ItfijxC++Es1wgYPRP9p/Uhgjmmpg8GGYGUEk3fjfUl4WQFG6J5njb8cUYQwl0BMtGaZ/hpxNVPa4szaBWsdivrUUiCUaHLc9vOFlv3Hl/GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbBTehY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbBTehY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6352C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738911953;
	bh=9eMZ9Fnq8Ydlha3+qyXJWh6JI9/+8mk9d3A4vL8f1QQ=;
	h=To:Subject:From:Date:From;
	b=TbBTehY3BPzgSg6dj9XNp+/Gc6L2tN8NbVZckiBBWRoxTTPd9vMzv+Up7U6IkLG0V
	 hagibnUEwN+IJVjwZJytaRfnmsrPDW8HcmKHom/eHdoxH5w99zbvHzL5J47l0AB1ZY
	 mIa/Eta/qr1dR1PQReFRTLHdPfuJ9pKptrW/AsumRXhIPHvr6hwWlD6d9FBfe8wTNu
	 zBMCX8xXySyf3kdpcSnPvhOhUBRlQhbSicHptFdzUr2LsJl18vsoeKuDNdLeUDwbry
	 P8fCmIGF18KucpUtF7Ih4eZUfoeUmH/3tyVg/xGKEDlqtrnWTM639osrqODyRD5I5f
	 +z7W7h2BzrBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71E8C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891195362.17884.14568063180031099276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0047f954f0506332dabcfe5c4ef602108ed83016b9f6e2f02f08f1f696b93fdf
Date: Fri, 07 Feb 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738911953
