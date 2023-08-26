Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF0DD2E5
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1823C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693064648;
	bh=y7ASOMxgGniyQX9xhRdhDyv3nVMULNv7JpfPERx5Kd0=;
	h=To:Subject:From:Date:From;
	b=MTKHTlVWBotVbysPCJbCXghheJc/uaheJfiYUkR4PYjoIHi/yMeXwye5bdEWYA+IA
	 YoGNxkU3pUWYW3EEV6NOjLcfQDFHqTcFs5Et9snr/hucYiWU6EFc9eJjMvsadgqBrm
	 JnIQwGW4enha/i8/7Y29Q76/IMYrj8ZkECy49Rc/eOVcFXkPYT+39JhrurL7I6E2Wn
	 8kZQq2Q1qWF9fFtlqv37WF1SDNHcWGYtwZpTMBqclbrcAq8TZSQFCwXaljzw6FLIFL
	 y3HPeautflvOR2AxpmWgXWykkZer5JVUBooMYf2d/Dve6BCL4IOajXlSGDM58FAj/0
	 QvfDbJpIJoN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4510C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169306464872.4534.11826574440491737372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7be935c40963a19f35725d7328d93af63ab9e8678017c3e7715ca724112707
Date: Sat, 26 Aug 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693064648
