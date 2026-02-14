Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242C82FCC06
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771092894; cv=none; b=D3+EBbVASqa1XKBBtt1k2aInM+o+a1gzmSogngb/MzLXQRJj9L12UEhdTmLayZIsrPDWiLSJVX62LzDO/AUPVcLyz3fsdRGM7y6AJG1paq7os6ySZpjGRUhJuuYttGNZI58M8mSLwTTW+GxSkA31ZOe/91rB9iXOoH2eBrN6RlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771092894; c=relaxed/simple;
	bh=MA0o3/hxZXaSDk3oElV8mpJlgvCKTJkMHR0ShsUOM0I=;
	h=To:Subject:From:Message-Id:Date; b=dOx4ApHJa2JMJyvgvx6/KakEoDia2hrTgDmhmIBc0SGKYyBLKdXWnfT3aDxa2wl/LsppYBIlMoavyy6ElLsXSWj4Vz9Zsl0UZ/e7JLIukx/+qMOyS1ziH0HkYdoIRKSQmiZPr9s1YxbtspSBDbGqTstbjTt+nXOY7UkZRJYtsd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoSQDMLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoSQDMLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CF9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771092893;
	bh=MA0o3/hxZXaSDk3oElV8mpJlgvCKTJkMHR0ShsUOM0I=;
	h=To:Subject:From:Date:From;
	b=FoSQDMLJIRXPo+Tdgl0dzPITHfbuRUyVTTRJ090eblcmJtMwIsjyi5niR84lmJHB4
	 e4Fiw9sZ+2wM5vz+/0VNWyFXwulf4qbkSlPzSoKJwQypZWZ+m3EW/dst3DclxSyWcb
	 jAMYzn7Vdvhw1p07KdoTL4afXJ7lydhaZ+Fp3+RS04BwwA4A4hJnku6FqW1p5HgRTE
	 emRDk2ozwBgSFABsZJEqol6rxSyfgJz49pVxXrU+fNJrBM9+LYLR7IcMVz7npYMHUO
	 +E0ztxhrP4Tu5LH+iVuGyrhL7lhDN6Mgz+oRA/YKWnyVvo++fhsZLgO+DLjrqAqfHZ
	 43yiInS+C0X3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E04EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109289359.21949.1846516830211794672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d10478118cf0e8508c68304dfe8189e4736985503c86dbf92690b44c62f9ce
Date: Sat, 14 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771092893
