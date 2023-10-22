Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F892469F
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBYpJKuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88068C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697993296;
	bh=ObecVz7GEliLSX5d31FQbyiAjTXtGHaHat7JDjea93U=;
	h=To:Subject:From:Date:From;
	b=eBYpJKuLDf1Iwh69Uzx4zm5qcbC2hf78hHJ0ZApNzFmkevSXPDGeD1UivlR02aMol
	 dBlkUOVth0hIFFYBsoNo8d8ycN9it+xaJ96ru8x8rOdiKRNf+yhy7yKHEEVVFtRxUU
	 FW+EcxvX+owt7Eo9EsVmoSYpVX6jjqpV0uqnBp2RaFqAQzA89CZEBUtYWkXqZRzo/m
	 5lT8hGau9eRFO/76P91xYKojaoPfR84bYTtV4y4N/2MTPUwzrdQprDcFkhLlwTlbRo
	 WLyfM7V6khfwbJGAfQ3ZTnaGEEWWXMnJWkDhVUkCHNbDVWzjR1RwjAmf+ts195RFIm
	 TcqKS5LjBZn4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696B9CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169799329642.18539.14037064366158608685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3641c5acb5752c948938754f33aa914437b89a46a70550a1e58e60950d5e42c
Date: Sun, 22 Oct 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697993296
