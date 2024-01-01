Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1934F4689
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFko3CbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 888F8C433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704103096;
	bh=82BXY2dEnAgINkmwk6FYd7WcorRf7UBDEvmRDtaPo+E=;
	h=To:Subject:From:Date:From;
	b=NFko3CbQHRyGRgN9o+EksXRBfzXk4yqpj+HLHh40E9oM4O35v2mrfF8VvkyIJ0EBY
	 hmVQfNQ3wo6HozfxC9TIOSlqD4Ww0pDwfh29+fRYcdyPppNNZmRqNUxRFaNAwm82rM
	 jrpY6AKpLeg3DXTFTd7Lhq3969qMOe/IZns1FQ88r58dWQq2Vmr9XAJy5c3ZLMpBD8
	 0ETyYoUY2dg7e8w76uxi/NKFPEXsGtO34kjLcomhNwxntsYeaJOXXiaPLfwE4hhxEa
	 XnLJoro5KUV4XEbmMS3RPaFYBd9r8JaLUqNacNu9f7pKOnnw7kZHB+9Za0bOZoLMtv
	 YjBml2UpJpTPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DA1C47074
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170410309638.19154.7869053913964600030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c175b690b57bde948ae1c4f4616d325499cc3fe0d740f09a01db343286c3cd2
Date: Mon, 01 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704103096
