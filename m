Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4447425B1FF
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764026574; cv=none; b=Nh6IhnHwJSszjvY/9zWQxyhy+hEfAf/qRi/fJnYng98iu8YK/iF6GSeBJFkFe9PbO7MvnBhesxmXcoNr9F8WpWdpd8e/IPgwl1L8Uxa1HJHQlkZUc9krXS5AFaQGsziw19M68SuBRxSphuZYfio339mVI6cV7kZ+vPLmYe2PzGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764026574; c=relaxed/simple;
	bh=Kkdt/QRF9VKvsoK/BFqBovs6CEx182JXY9uAU2PQLaI=;
	h=To:Subject:From:Message-Id:Date; b=Frbv0XWcHt//J/hOMJpwZMG6vqzjhVkfkh6hwzR6P9H+jXODUuzEtMly8rnYrVUhzLQhNE55EkkSF2VNZjHF1ZiTAJ6pjshjTo14pG/G0HjAgVoGyixJfRwSkXdCYesID7eRWHK3Tomzydgaq7rRZPPNXF9JhKtE64BhXsfBKyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsJh+Qy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsJh+Qy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE089C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764026573;
	bh=Kkdt/QRF9VKvsoK/BFqBovs6CEx182JXY9uAU2PQLaI=;
	h=To:Subject:From:Date:From;
	b=CsJh+Qy1UEVFrWqj7HJD0AN4UKsVL1Xv+MgIenCoqo5dtP5G957hOpK76sK2Z/b7x
	 pteMAPTggKS2SOlAHxWhoLpZDXHXu6EIE/2+HhTR8d3zE6ETKupN46WnUh8fLMMF3M
	 I5f0eWpufjXyytFqzrpZBwPZl0XQTySwbhSOuf4uTIICm9WdERFEVUxNstfgORyfpJ
	 DPlGIy2T1tv9EXdfRTRT3ChDzvhUwX1HLF22ocmlnq2iw952sWVsncuNrvjB1n7rrB
	 GYWW96FUfUJdFtshNwF6XqhWQoT0+gWIx+R236kbWPpJYY4MmwfLVAZDsYlXWJdWDK
	 V8TdeIc1AzU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1C5CFD360
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402657360.20465.5479806482794433074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32066c3089be975ac4662bd9928799fafb9531f7863757d3b37c62023e1cdb1
Date: Mon, 24 Nov 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764026573
