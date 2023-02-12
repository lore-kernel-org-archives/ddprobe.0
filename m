Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35911A28
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 14:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5E6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 14:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676213645;
	bh=2NldceXwCb/ZuKqjrxci7r5ATWNFfS2cLf5h8H1TFvU=;
	h=To:Subject:From:Date:From;
	b=kUWqHNc6d1wJ9qBR+BlI1lKDaEQraz95ssuTlpnZyqsVTKZWYGcMedmxr4PNne2iG
	 eWetE0DmvyIBt8QxaSMmQtTGecfCI74a+cJ4ko4Zg0+WqiAm1ylAwRsvpdGy2u5Dai
	 /67LRMmXHOAXVPz9aGH0XuMIGFDcF5TKRGRmuK4rBLY48eRiIsc4eJIC+WDGsHdGqu
	 chb4fbbIvCZ/f6kvJhwTjPEVADHhomaiwGMhMITuPy6lFOdsjfxhm+E8Od+kY4GzbK
	 NnivBL8g5zh8RY0Trqg/7dCwHs9mvHyaj3wdsZlnE85ceG3RiFq40s5dGwbSBG5gk7
	 qej5vSt6fff3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0529C636D3
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 14:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167621364577.16171.9852224789081775886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9687b36ca1b0737fb9d51366464b403e461025fa193af4858518fb433e519ae
Date: Sun, 12 Feb 2023 14:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676213645
