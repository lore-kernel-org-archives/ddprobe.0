Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40E67081A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746974993; cv=none; b=u8S1dZAac+d+zSOa/uss3SxPIzxfzepXthVswxY9EJ7HENuHsyAjp4YGSo9uXztn/Hb2pbGu7wHn1lLqw0xjyzNN5IowjsJL16xTs37G9uIzOnmy8GGVjLqa1AC2CsmAh2CCmJ+uzi41Byq8mRMe4v2JpbQ5JfOI+IH9JhnJJ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746974993; c=relaxed/simple;
	bh=Pu+XtfLdLzcOgDI3D+Z3RmOIijQWmiOZicyKS9nEsOc=;
	h=To:Subject:From:Message-Id:Date; b=ukMsO3X6hlftyqf3mBfTGkmshuaKZ5IfWp10rXhTsVWpwuThYkh36EtXKAPd9YZAgzt9el0c/qjEmQSj8N2usF6FkR2DzKf2ec8lxJLF9OUYvgZI3ofaQN7lzxl0+2KqRp7rPCDBeBvInnp34O/oqQnQqoUAUEkn41jv5h01L0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kK2dDrvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK2dDrvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B09C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746974993;
	bh=Pu+XtfLdLzcOgDI3D+Z3RmOIijQWmiOZicyKS9nEsOc=;
	h=To:Subject:From:Date:From;
	b=kK2dDrvk5b+ufX6yqyip/0dsDh6xxe3gJFTsRuVl9OPJDvNTM2fDlkb51lKVlPPZ8
	 l3IYjc7XJs4oA5trpvRpnhemnkdGn1NmXi2T9GJ6BE9XuA093HIQ5uDisx69m4g9jl
	 J7HaER+OAM3he3QsMSENYLYZXfS7/Nke3qPwFi7d7weUmm7Qjl0iZRqWNOrcdro2RX
	 4EU1UrjY0L8JxoOgINfOtNWyZlZ3WMzS9gCNi+OeEU+NNnNCTh8R2R+z5ygfFPQi/v
	 xDpTI4SV6GBNut4bk7uDW/G2Uinslti45ItNWe99VMljlYZaZFLutLFCU8Attmdr4U
	 dhhljNBf+1IhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E804C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697499357.28472.11265094167215840056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43107cc6af712e9a9ae679e58286a82ae9fc7d1f40b835c83ea67955616a3802
Date: Sun, 11 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746974993
