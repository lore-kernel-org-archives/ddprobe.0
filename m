Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AED6194140
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720623983; cv=none; b=Lmdp88eYbWQIuI7GHY4o51y+6pbD52+kEx+kkIiss1zgdSvvpkbDoV5I/ZQWukBFDail9fsRayDdpYdOipk9tRlJ1vn0YRow7+WcIkuROglHoMCh7nOwxPzLTLjIC3U/roFIOyVt2rag7a1FO6FBKMD/Vj+M8BXA1Tpsy0IrUgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720623983; c=relaxed/simple;
	bh=2IUa4jL5UjVZa1/DtOH3HgtlhNUZRcuEG78yqoR9RUk=;
	h=To:Subject:From:Message-Id:Date; b=uWrcWWZdGMuS0pZkFewRP8NDXx36ldd4Ij3luktZuVuTXyt2gIxdL7ZoqjH7QR/0huiLDOEotpTG0M4qgVS87KaWAGAr5EVYaCzHLqIs31+OqeJ0nbUgXw17VGqSTLgXlMF/xwStVHAVF7Ulmp89TWrsGgLLPqrUBb3+VwCsSpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1Qz+Sv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1Qz+Sv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBDFC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720623983;
	bh=2IUa4jL5UjVZa1/DtOH3HgtlhNUZRcuEG78yqoR9RUk=;
	h=To:Subject:From:Date:From;
	b=s1Qz+Sv76SF2sUIEcHY+ApHbzHS+SKY2LtJuNFo1kgI0q2JsSmYFcxbr6xcGyevml
	 6M28m63FugjZUWUcE+wABPr9ZTGyj6hJHNBqceCsEsDWm/1mWJ2ciS6ZnIWLBA4urD
	 sjY5j0EJVMmnc8cw/1vo1QRx+Meu3/Et4S/0/15qjhA5WBd274f6RQhQ4bf0fIiSJv
	 iS4p7c+8SFVc+HUmttMsW7Iu2Rqa69CyCafaYrALTz4x6jGriHCNnQin68nNe0zk9u
	 Tz0eLkkTdWww25fDzIZ6G2+H2CkZh7Hc5sH2bxSfYhJr4buUERgjBFdwVxkdfeSF2H
	 ARDSfLnPp32Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCFCBC3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062398288.28860.1290642612329700964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc867e3fc7afa6945c8ac7822432689b51d9dd8a53a90770361dbab984bf18b6
Date: Wed, 10 Jul 2024 15:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720623982
