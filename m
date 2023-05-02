Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2F31C14
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DE5C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683029165;
	bh=GQdPojzwQ0s2nqZFTj9SculR+MNS172hU3wokDWTeN0=;
	h=To:Subject:From:Date:From;
	b=sWNlDGVxQvgEPlp5EwvfTaxSnz2OHJ1gtFo70o9wAOEk6zNYVjN6oBL2RxsbEb54O
	 SceD6jlaqqlMaUL0jMsr6zepoIn6hMjRocfZz/xbjNXfjXGDiIvivghAySi/WiWsGI
	 rI35YNATvSbADnZstNlW66iSyVFBF0Cffr75Fu9aA1Ca9fAXtSU5t2iAwWcxQtHf54
	 q3W0PsRpDQtibvm62UHHcseYg1AKmTn42UcYsDP4apd0lHZM2irtkWZDWhKBwh68dC
	 M2LLC/8p7NtvKUMwKaHB1RD1h2ujsVtNzvy+4Cjw90YktAzgOD6HPg7++rPWnczrdz
	 ZZ24pYgaNSHXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9172C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168302916575.932.12966003098001039057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94babace616f851925309e39a556846e2b86d504b64655b3f03229fcced87793
Date: Tue, 02 May 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683029165
