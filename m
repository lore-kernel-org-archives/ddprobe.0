Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAEAC23AE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A950C433D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669284054;
	bh=Moc8RecdStKKSC3/lgaGsDCMSsdCx3AfQUAc8RC2mao=;
	h=To:Subject:From:Date:From;
	b=d7hZP2ZDHhEduqLG0Au8afK5wpfReHCo7o5pwnTKloi+if6visvJCMnEZhAAm05UN
	 fWwzdkdVMrFhT/Qsl6zeC0kd/9aa1JfcyCqhp4TCw9cLyZsEed/V6+VEDf2zShu619
	 lq9tTYtgofUOR0jGMVW04/A5jdDM51bbJ/Fsn+SN79BOLH2t1QmvygH5QB9jrxduDF
	 DTWvr8yc+19NFCDgS84gKOTKdD07ywcBoguGqzWk90KFyZO45dv7aP9Mo/pB+jHLkw
	 ySJxel4wB1cekMyrd3g5bHsuC3XOs2ASVN/lUeNEMnf/nw21dtv+XGChNEfxpSNtEz
	 qB5HLuezzZiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56769C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166928405434.23173.4993687318511384418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c77101643a0619530dba4b732767260286c7f4201cf5fca1c866b20ce7976d
Date: Thu, 24 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669284054
