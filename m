Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D095A66
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70978C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664490053;
	bh=Adwb5kRcASYxDz3LQYhooBwWuAyPo+oslfi/SLyKUy8=;
	h=To:Subject:From:Date:From;
	b=SAsaF954dW3s/5ZMplzFt/Vtk7og9kDnvZ01U8jAD0GL3CPAnP3U1DcNGl9VU8z4V
	 l8FUJDowGe8HNv+Hzd8vJ3lxktsp0ouKoGjnA611RtUAtJs7pzflyhVBdL3pri8xaW
	 KmIU/S/Eu5iIsjNXZHSe5STs6u8+TW0NLot1IxUIkfoeQ6xPMGfRQEHnrZ8P6giRz+
	 01zd2NUs5LhBUPPBf4zZ9MDFbPuoPS+80YnL2XPCNapn6EtaxwN99J7iXJOWDtU3ow
	 jlAg0M+DiOFM579uCk2r2a+BbHDhMixz22xogphptT/unAaeTGCdw4VG5LmP6OWEp4
	 LtGJ4eiO0JNzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53033C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449005333.2116.17749876320335911850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9578d953222af2bc9770a12ea6317cdfc88842fb82ff10f1339b5780289235d8
Date: Thu, 29 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664490053
