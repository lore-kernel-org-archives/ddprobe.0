Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C121B80E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCPS+o5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76142C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705405096;
	bh=TlRNurmxDtWDZzQdWlpKbltSOYOsWrQubnGDTJIik4s=;
	h=To:Subject:From:Date:From;
	b=iCPS+o5Ay2Ow5YXHKftQN78WgD3f4Qa9tLvmsANzT8iMReNqpW33NykrZxA2OjQ6H
	 uhaaaZY/UviQYKhGLYDOsGnSN6GFITyAJBjsI/PXb8PWbWFDe/yknzhyXFvv9KHQrM
	 zUc2pdhFdrGeeRBMpq0+AqbrS0yQIBjCX3B3Dmh8YI50IpV5zpRFqli0aljMGDjDzn
	 p4dyq1ufvEGPEoF3VBkphvlQCpm2xRWu+mA4FYRJRSey7z6PftyOSfOsgzf50RHQ7N
	 DtmQ9ko+7SwD8vCRHEibb07yZ23ey5n1sWRcUmB7UR4nwfm81opbANszEDCBFa97dX
	 R2OGd9frtR1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE74C4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170540509636.8143.17111922677752407238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5383ea6b64dc0bdc13cf08ff6fcb2b4400c88de41dcf263078417f1279b6e7
Date: Tue, 16 Jan 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705405096
