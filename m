Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DB3213E7B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752518994; cv=none; b=Ysw4NiUqCmdvyqff0nue7Londqu9GUQRpqBEYmE2n8RNJaEfgsrWeTnvLsKBfjBdvaxPcKWiJ0W5ZlhB6SjXYSflfD7KDisEPClMtnlmjV2PM2YC/UGHrTieCeHGHoLgozOwcd8bLO8roIzB5DjOWchkJR3SPFXcbg4M8Za3hAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752518994; c=relaxed/simple;
	bh=X6QWpjnyt2T50fVVBfwIMkTghd3X7UVdZhvxRQixgaY=;
	h=To:Subject:From:Message-Id:Date; b=Zq3fAyHBO6PeJnTjXHeSomLuCBBxXczt5MZ2oBJi2IlM7gj59mbbCEXm0Fmt1YgAJ3HEqOWRhHWImxiBFiqWEpS2zSZ3Vizb0/NWYkUDi0CeEBN/ULxhWGRi2n921Ww8XavabQP+msehBXGhZCzuaGCRPV2zk/N2Wx97zZIGSDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/NcZJPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/NcZJPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78FEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752518993;
	bh=X6QWpjnyt2T50fVVBfwIMkTghd3X7UVdZhvxRQixgaY=;
	h=To:Subject:From:Date:From;
	b=P/NcZJPe9EgrT6/Xt1t0VGBI9GlbFofQqWetEdLhVq92SJPNomGMQgFtx0hxLEOr3
	 zBnTGWJxRq1SO6e8UbK8DNit3jdkJt0VFfKL1SufUzDbQVl4IElrJDEwBz33VGYb3s
	 LIGNFeASpV8LCp/T7XXeF16LomVHEnu2KJDg+Noeo7+GonethQA4TTGumWl7aTKjEe
	 +M14r4ipey5D4cblRcEO4yebt5Copt2LZE76QEo+PJp9OG3jdfo2t4SohAddeAl+u1
	 wGAZjMnRBn5Iovvheq0RIHyg+31qnKBsaseY97Wa1MsaMnBCo7xnp55EMY7YV/0l8y
	 sOcLurYXv8IxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5AAC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251899363.1875.16251456640308489510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96792f394c52cdab275b3729bd165d53c5f3736afc71759bda9304d38d539165
Date: Mon, 14 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752518993
