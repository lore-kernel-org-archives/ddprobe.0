Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F88EA2
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7529FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665195653;
	bh=QY/Uks6hNEUmiQ19WPEcA1f971bqxsdTf3uJ7JwKVO4=;
	h=To:Subject:From:Date:From;
	b=MnbDi5CEs/wKGemxv05BOL/MT7tmSoO/JbcBu4mMqCGQTySh3N23PC+s/Yjdbd9Aa
	 d388GsuZVn+fmjDoM5QGQLJk7LtlTMP5t1jYushodP/8mytS4cavkciZlWIwl7R3ma
	 +8Da9WepYiwMgzpvNAa+aBnvURNlq6FPGDqs7AT7iJsykrUk6kFW06hhsqpEUAHtKF
	 eIQWg8s/pAQgh6ltOjyQFXSeLtI3b/wiTa65CmOx3ah0i8xmWG2jFL7mScBbyqFimX
	 a96IzuSDONjtUo+GVXEmHYwRuxng2OIKpHAHM/iWok0Jo3Uu0JvrU3dJPeSRxepoXz
	 hKfKEoo8Gvy6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574FAC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166519565333.25348.216225453087434064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbfd1091114e12fd52b9892224843711c2f3f4aac0fa8b4f699ef9e6dfe875d
Date: Sat, 08 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665195653
