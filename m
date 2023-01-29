Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3F617F1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 12:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36D5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 12:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674994385;
	bh=EVRGg0Kp01qSKxuo+1a0VClawZq44h1yxh7nf6IVWN4=;
	h=To:Subject:From:Date:From;
	b=lFdEVm3tbPZ4vdIjf4aZA2td2vig81/qsyz710hCZxPorVvz9wiPCUcDb43SXuGIi
	 aqf/C03InDbUh+Qh7Th20PrmACtTO7znLW8UFePI0kzdqE1op128vj0cX3Zl8Z+o4f
	 Bhm20SmEcychSBH1bUrZb4h48fJ4f0RTjliAyKj4roLDSTVEUCTHMtEsQhDqlcoXng
	 vdOyP94Lfjlq5jSFn1kHvWPDFb0t4iZEq/Kxah1IY6TqKPKuDsftnjBfk7bn9vlCno
	 Xnq4vZuJBlvZD+lQiA//9mVlrRUVwTBNZvwyZS6nvfOpTmIrEOGV11S7ZFU1T1ZlVT
	 IEeLNXAzlU4HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7637C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 12:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167499438574.12201.11777481364784026000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3616fd11d372aec1b8882d97f8b4b5e59f0bb08343e98fa50c523c9f774e247
Date: Sun, 29 Jan 2023 12:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674994385
