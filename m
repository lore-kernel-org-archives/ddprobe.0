Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD12C320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E85C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672668687;
	bh=ZrEbWsdujV4Sthmh1jQX/9Szr2Npd4IiJI8pGGwavNQ=;
	h=To:Subject:From:Date:From;
	b=EZUwE4RU5m8ZMrgLGjmdy5RSDpAYdmMs2tHJwhwklYuinHHGF32QVigfzmnBsrOsG
	 DMxUf0mZE0gbRTe9oaemlauAJ+4mKvuPjSq+O3LG691VemCMIB83c+fV9iGMuoWTOy
	 u4U1NRucTUmJHf1eYbhs9MR3NOTfOI60WcMFstLiK2mPE2/Ab4BglL5fO6muJFj9Z+
	 ghr9paYsZ/XMvmEVSgs+4LTUKvdJQEyYb/9aVcGw1rVIoYRxTlCU9uQw51Pk+22KpN
	 rTaWW4sFBm3N6bR7Xt22xHSf5uvBCKcOxqKWWbggU0glb+ahHxx7G2/3FsfslEUbRg
	 aNwcn1uOsY8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6915DC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266868741.17314.15328685271169827397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca29ec7f1345083349fc734435ec6678286773d4cdf11de33afbb92967ad43f
Date: Mon, 02 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672668687
