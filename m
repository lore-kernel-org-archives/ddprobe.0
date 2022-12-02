Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EB210EB
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7220FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669947654;
	bh=Uscz7hfetoAmLlrX3rPXlVJPOEUspAM+TkU3j8fbTz4=;
	h=To:Subject:From:Date:From;
	b=nCtW2jCW8Y0Zpw/EtM5VtF7wkOMlxY/ur+RWahr1J7LyUysbVPJVa8oSZW+lSs8hg
	 MroRtTcpkyNZpIFUmJhIPqoer1++kus67IRb2XWsgwPoW/7EkoOdB94aBbAN+1gHFa
	 dq61tqginVJ6ybYKHVmdvlBUFcBb+JED9y74f33XJGSb5ORNWIBFLVyPdzbVIMehpx
	 C1EIAieiNWZiDMTdoE9zhnXTexVIaPZm3R1fZ/CxcVMeg5wys9UgV6LJMRveYbb8fu
	 49RCqCS8FB0eTb7WpEWJgxE0yveZ0vRKVgjNJ+T+vgWXvplyuiF5aK8ab8SF85Dzv4
	 NTXo6Yva28maw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57209C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994765434.27725.8734180210987555971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4660b147f712ff0ccc363864b119a2576db15e0d6d1192c02846e4a5d3c6ef8
Date: Fri, 02 Dec 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669947654
