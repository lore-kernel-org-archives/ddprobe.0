Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0152D8796
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762408794; cv=none; b=TispuyYOWwbfTgg7kk/T8DdlhpebgXBwIEoDbJAA1cUyJWnIhHq1P0vt1qg7cu8pdkOf8j70z9brDSB1elnSamki8vl7J4Qi4EV3NLhZT5QeX2i4JSGxUR92OwytTYKDyBJXshXOocw36R66LhukqWOReazDUVY+i6zl2ZC6qt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762408794; c=relaxed/simple;
	bh=OaxBpix5tsHs+SRbgT/WYcK6XtEzJusTH8F8NnQ8Ch8=;
	h=To:Subject:From:Message-Id:Date; b=KK6a+wTdFtuDxKBRPKf/zHdWTKAMD6el3yxIRniiAKbSA1Rv0J3es8Ts//LM2LRfEIKN8fZmvKoB0joydwLr1tFn4EtTyNESrVg3IX4BPvy11MJIOHelYAlUr1rpZMOm9Ge9sUJUgkqGwmogOkbxhDxeTOu5YVIXEZ082fb5v3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTKBreai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTKBreai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC8FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762408793;
	bh=OaxBpix5tsHs+SRbgT/WYcK6XtEzJusTH8F8NnQ8Ch8=;
	h=To:Subject:From:Date:From;
	b=cTKBreaitwOQm5TryC3sQwnB3mWszsWOBFQ6y9FVT5k+6dJrpC6VFXh6ZKYBHh4re
	 rP6nK3+QpZQBBWBBrO+nuh7/VgB4L0utGGkFb7/OWZ4RQufOs7l5x5cSq145JeKrsF
	 jTMDGCfZalXDiMezOqfQvjr7ChvtPdTMMtiDrZNDn9hdARhPGVsYoQosk2eLwf5vnR
	 O1ps50guHd4uU3fdec78RiaNXoyIy9MPbum8yMfIbpdw/YgdGDSbQt0FHBCwxUC2Yu
	 JwPYYKMRUuUq7IcxCmbZ5Btz7ZyWQPNf5ligLnfI1JsBro7E3jx0S9xG37ZxIjcoM6
	 UKlE+gGdkOVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC5FCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240879357.8008.16894237636918221759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231a91dda50a6391f5fcd1eb5fd57b6e8ab0099fa5dd1a5fb6d33b97af7e791f
Date: Thu, 06 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762408793
