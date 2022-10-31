Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E8617F3
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9B7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667184054;
	bh=ygAGhK5ZpHS+nyFOq/UaKcxZSH8J0gVBS+vpB4OJtUg=;
	h=To:Subject:From:Date:From;
	b=NZ6JS3typ09w+sgYhV+xAKnHPE/J8MFvgdV/zcf83mafyX0tMzifzk5U787n3d+MY
	 MwERz4ii6xRrMmLIr4X8qJZjbbFuGsA+b3C75mJ/tOXWBqogUxXbDDDm/MIoDzcBLk
	 Y8TSblEndHjA9us4Os2AyhrBCJhD2zzTJXWtEyHl5VA/oDxReHItpVmiVIRRImgMNw
	 bzofP4ix7kqlFecEpLjTnsigFUS1caABMN14kGcUioq3az4SwvTGRiNTM83lx74SIK
	 c6A+VferG26WzKM8E7Dup/DrhwGtwMj8JCTtgg5wLZ6dEDuq0NuDubDwi87JQfpflA
	 0HoIYCtDMeQog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A4DC38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166718405434.27319.12998697608565894546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec65ab1efde36c547c5190f2cbc969306bd7e9b8eed1a2e37d9ce5f4a3f6f32
Date: Mon, 31 Oct 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667184054
