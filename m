Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15421134AB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761980394; cv=none; b=ItyyBQr9TEyeErur1z/sK3Yp4hbj3ruHKRjWWM63wKb5VUlUyBYszFmn5C+mkxeRm5KokRomxOZrp83Xakte1srrX6Aav6oW0OpthzkgiksON7YJOH2pl704EbkC4+jk/LGyY5K5EZHN2XHEc3o+61AEow/mp1qDDgNnx8+bkp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761980394; c=relaxed/simple;
	bh=vRSkVKL4FBL6u2abLYnxTSvaI9YR/0uKh3a0eLdHMvo=;
	h=To:Subject:From:Message-Id:Date; b=qi91NgSw/1tEvyY8BlywX62vRoMbg66DRf5OMJeqDTyM/yGOA/SKMW3Wa8dSZ2712S4QLlQJPJrZrBj/5zRPhq+nkVtpsvmjVDwiDJVi2poizFEmz9WD5SyT5dd1PAm5CL57KUvO0F+dVEO6WbS+tu7Fh/wh3WOmiKhisA+3RRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T67FWn+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T67FWn+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2104C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761980393;
	bh=vRSkVKL4FBL6u2abLYnxTSvaI9YR/0uKh3a0eLdHMvo=;
	h=To:Subject:From:Date:From;
	b=T67FWn+eV7IPGnhHksZXFn4r4n9L/U8iPWNpycUpE8d4fjnCe2RWKWL6YRGHt+/UL
	 OfQTkDNU90fXW5TgW2Brp7e1L/7OX5Ax2PST8F76Sijou5CP1eb/LX+II+J2wNunI4
	 HjfbGV4SmRu3qEEmMYlLj0pSME+7irVDDEuWWSGK3zYmCvll7gktwuJ3yhXC9qFubS
	 XBMQ8ym7kWTo1Vp2aJzHxuACEKY6EBqBNxP/d1kJEseDgXPmMpihGhwiPBXwK1NCYP
	 A3mTKV0w6QhDFbly+AgPBPopPk5dqfnLxzClyzWlOGfJ5i79PuXP5s6L8ReOpXRidr
	 Rc31INLqbujNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA8CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198039358.25142.8202261614273183146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a09031ff819465325f81c0d4d6ab39545bafe773e99ebae3378f5f8473963a
Date: Sat, 01 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761980393
