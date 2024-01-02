Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F617988
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdusupYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97445C433CA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704239896;
	bh=6K3/Wx3Fjiq5cTgclY1fz0p6S7FORzoaF/THsJR9Fes=;
	h=To:Subject:From:Date:From;
	b=HdusupYRAapavLh7YApM0tdl0+jmcwVgDzKL71WdZPiOauKksNvVPH413WJewJQ3Q
	 QZ6xZgAM9Mj4fo2R2/qOXh1duSB4/OLg/2K+RenBsAREKDZW88jmcAILWiQPciYloC
	 M/kfBJBPrBSBAjatftrLaimxSH/ZapAp/+oo9inmfYlL0+a+JjKYdqO2yVFWQ2ULW2
	 GXrGj3AQmPsZCSwe1f+R2JpvwU64hSqG0ca/YpKccU7kwTeXTVwmRbVCjXojAPrdOp
	 2cPxabloDyAHjHQjx/REk9wICHqLwyg/IhmEico2d4u7bDLGr/LZeLuI0ma5WNZcll
	 PNiIMEqkOpC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B2A4C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170423989648.25204.6722651922770711285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb288d95819325fb48ca2bde4d2ce660937a27f2ba9505f94d44b2fdfdd9824
Date: Tue, 02 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704239896
