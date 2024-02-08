Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264CF67C79
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707373097; cv=none; b=owL2Lpyqi8bFVMVgOB/Hu1AgrTFuGGieRm6NFmigVpPWF91RwIfOPk8UD65syOjtZc0rrLl5E3/1J+lYuGHzQ6wezXzaTO2+EkcrSO3HyGbUk/1F7apuTX8RX5hF2J5Qzx+osO3M3o20VVwT4u+eNi9blCS7OEzUUuI0qa4Wox0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707373097; c=relaxed/simple;
	bh=uFfxKg174s4OpmUFnJuwjb00FqpTHqna7SM5iWxs0jE=;
	h=To:Subject:From:Message-Id:Date; b=cevR7QVYoiYtmE/ZDXrIzz5tXbrCwb+whJuJFY2P3fo+byD2DwyYb/OOO5Y1H3TZzdob7vUTBcahfTByEhB8iMz2wMU/PoX9Mdl9vt1+8C0vB4utRkY/2JF6FOkb9mtWOjkrsw70pEu3fRRq5xjifgH8U0hQ2rgzw3zMvW+QF7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVBmHuGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVBmHuGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8AFC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707373096;
	bh=uFfxKg174s4OpmUFnJuwjb00FqpTHqna7SM5iWxs0jE=;
	h=To:Subject:From:Date:From;
	b=SVBmHuGPTyWl9zWSafHlLFSP1Mqo17DYCmzcEOAtCcuwE8voJl3A1U6D/xsplLmJa
	 u99vZj88xcdrqMTev9teSI/LBTthpnzUWvmY7Re+4d+NQNMbsf1YDbyxpqg+AzjNUj
	 IRf0/8CI2g8oXiZgeJWRfhcIhHlTFSdcGw+yc8YBwLoFmbakGAu2W9PcDJWRhZWU3f
	 3+Gln/4wKAk0JI+z9jCxEePDBD1FWhcgckbjNcfR/xouGoR4KBbPaQYNGNP1hdzM5s
	 tWlX9n+TDe2Hw/XHcRD+PhRNm9LbyDDyikRui/9S+7kf/ESmFKwkDBF6ZTOOFa1zwx
	 G8XSjiDzQTN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614BBC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170737309639.24759.1201802065611149968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe90b8df2a9da38ae236ae0703032d67ade30562c3c72493c94b208765924a9
Date: Thu, 08 Feb 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707373096
