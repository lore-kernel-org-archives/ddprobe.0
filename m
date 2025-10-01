Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270D823D7D3
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759291194; cv=none; b=b+gIwzIJNdUC5tq2Ktdmxm80rOhup1E2s0Pgtd4E+HcY36uj2wpAAkR7bBHFyUNIv/zZHVUrlD2QJxcSmR9jZitgFyLUSGxtFWqjU12L7Eyqf6C/gqLjKvNKmmfOL3mwCxXZdzRY1Xk1155bZCSVNpyH4Ej2T17pXZFjpmykSEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759291194; c=relaxed/simple;
	bh=fuRNtBsQxDj3FHdvpu97MlCAFhRuFqIG+mdStU3zWZo=;
	h=To:Subject:From:Message-Id:Date; b=JU+Fo2sWEDi4QQEAVbxRta2fr4ob92sjeCvlR9m4YaFq3cWhm+Tyxo+yNvplklmqE/8KjSgBrfinCeKP2yU4TETIN89gPuiz7ud8d/ha+dzKy8/xMPVlrgzU+6nN87/0+c9OAepYNeAK5ho7jBn7upb8h6Vzka4S2ZBLcqRGxdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8RRxHzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8RRxHzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7494C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759291193;
	bh=fuRNtBsQxDj3FHdvpu97MlCAFhRuFqIG+mdStU3zWZo=;
	h=To:Subject:From:Date:From;
	b=P8RRxHzL1KxbhTMK04sAjv6JAAYAA5MmVgimw2ZMwkaIM81Dsg9WLOv7qkXgy1mIo
	 qVwWm7jOe+rkU7If1OPIpTuoNBfklUTIAX/f1eUkohs0v7uf4NkuNxcJKK5usslhqP
	 0DDDUWP8ySCKz4qBNWoiiD6O03EbPkuNRQ/MbyFPK+aSkyfoew7LuoGf5QaMEQfu32
	 ViOELVud10X7Bn+eXirPeL2cZLxfyBH8DbGr21MbwUu0k4jkdPFYxE5UPXRxhFI8Ja
	 e8LA8jDAn2D4FowtgXW0nCScNOITQdBgYkuQQbDGcYf7r+jP93n0IZknXraBYcM6uz
	 aXeYGyiZzNvjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92081CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929119357.20611.2830107908471133216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f206ea373e076173b57cd73a95b4065a8a088e50c5ab2061ed3fd41a012959
Date: Wed, 01 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759291193
