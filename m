Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21046AB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78878C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669580454;
	bh=6XuxIejnecrqphXfVMdIJvy1RDvouuZIjbIKFHL18YA=;
	h=To:Subject:From:Date:From;
	b=jtK2bgyeKYu53xcSajYtrO40K7eZhkvJhETzKUpF3CzZUU8DHhd3kNSaNB8dEf8X4
	 WA8TurHXdj9OxJLR28AezS20lRl6glj50L9rfj8Zxuvyi21bREB+NaZfWHJHJG90IB
	 sHEYwyfvxyQ/c4aM9fIfA2d08IN5Q716EkwVa1IXdF0aDk5pb+Y9JC8o0x3iM78qW5
	 nkAP7vc4QGSLN8Jz95q9e/vJ4lIUhtj54nOyOULfrzuuafj2SQqnF3Dc48Djy1cfoK
	 KbnF4cW2+a01Ws7En+foWsmFXQQGsnla0D/tn9l5LQIqtQ4vZBNaVQAJiyCNQ6h3EF
	 +KtEfE5/vypRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A479C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958045433.31279.14696964776125071627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb521c3f13149aebc010ef16de5b6b4f0ca3bb477cb72993a26fc015039e323
Date: Sun, 27 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669580454
