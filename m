Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789A9D2F8
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 21:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12410C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 21:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676497746;
	bh=Ol3qxAlIrq5J6f6FxwUbuwX68QnWqCKCrsHuJEQmnjc=;
	h=To:Subject:From:Date:From;
	b=SRZ/YQ4gTlpiXCmoA2wrwK2xU+Jbvr6FpTAkbT/zzAYtOk0GUGO5pVR7ccdrXFSXn
	 0tt42DxhRjUOKVzON5ava4gTXL+sWSfffeKMQpbb8/NWqscaRI1mp3GNZsMiptSgVB
	 p9z8qKZrZBfnv3yL2Ae48YSZpsvWxP7Zz6UTE40QBUaei3xPjowl8YzNlEZXeYLJyO
	 uf9t8s1uQJCbyx382SVoUa4LeXzbcuZFCppbVPej20TaQP0XFN4gHaynWJcX420qG8
	 EB30K4wANr0+B4JFPYM1jPt/Yiy9hr4YYaFoJK8msJHi96vHHMgH2fWU0ivuFWJAvq
	 Y/qmgpyujddUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E37EEC636D6
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 21:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167649774591.11447.17095648535457712759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f58f7b1ca60a624f21497d3629e70fb7a8d22fca5116964fc9d7f48044a639
Date: Wed, 15 Feb 2023 21:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676497745
