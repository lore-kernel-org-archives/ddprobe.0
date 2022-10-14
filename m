Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EFD361
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8061FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665779453;
	bh=vYHxIN7fUixTVoFPlou8M8sNL/k0w0IojLPdop/z7ms=;
	h=To:Subject:From:Date:From;
	b=tuUcljq7jYV3F1PNCt6fLO6FGhRwbXl8hLFntKwseLrC+MGE7F/Kocy1TWcVWqzmu
	 hUCA6oDTXJIp+m4z38TbGoKgysv8N1oxk30XGfRGwHXSfQGk+Eq2if2dviLfVTQn0b
	 AnNZe4W4w5mQm67wan2tEyU0xIKqK6eMVtNKiQSVqJ/JOFhQ53PyQQuS5vYQTadA21
	 OTAeSR6nZGotrFRDx48pIzJS4EUIxQdXpftcqwUQRN5PQET3vUsI4Ah+kAgRLOuxeZ
	 ooOGcFVU9Lr2nJa1Ye/NXhdgPAg+IgQUdvdkedZt7RGp+TPdFif4yvS4hydgi6Q5VF
	 15i6q0h+zkElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F340C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577945337.17943.977774316105863739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116916f9b6182f25f1fa45a047666ed714e0521578fc18ec148a198d99b82b23
Date: Fri, 14 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665779453
