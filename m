Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396F12FB2
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747552194; cv=none; b=eXQ7WlszhxssuG00CWSj4rCH0YzgtoNqaaZhA26vsOvsHyL93tWOKiiKTmYiMfzpfTMBDzkjX8+0xrzPlKXy5Ucc/3QwN6ZOUHStLcRncNxtBzbwlvyRcHHkb6D9suhDS6noDKSR4PsQVx59ZrWArOqK/6f+FWwWbvloTXPVl+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747552194; c=relaxed/simple;
	bh=ACsBHNMox8P+Z/qqwOdvWJ3SVUdAz3B7jUYWQc4M2eM=;
	h=To:Subject:From:Message-Id:Date; b=mJmiCCAINLMBs8gnGS+AheCrDHPXviXVh0o0t7WBvf2V0Zxxb/GZgD+Z4nLB6bYtjW+OeNkVhUDrb/yIS7/PIDw5fMwTaqsgw25CTPL2Q7ayfYGEfagKU4Ab5CUwAZ4CXMKmzhze8ix8w/za5x7h6Y+1KzTd+RCkSLeoRwVwX2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfVU9m1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfVU9m1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51AEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747552193;
	bh=ACsBHNMox8P+Z/qqwOdvWJ3SVUdAz3B7jUYWQc4M2eM=;
	h=To:Subject:From:Date:From;
	b=dfVU9m1lFDEyXdrI2fAvaP1n9lvvthEwf83y9hpYPxqOrKI67tDtuIFO+c2QvFbTj
	 lzKCj7NtWeHUr6TnojCpGlhq9hyaePaawUm+QCLB95R32C9uIyPiLDVAGAapR1D726
	 Q/jjc/vlp/sNj9QRr5eG9sHMXUsykITDPqGN2MQNyQqk/k8+DDKfLFIuuP2QOPRa/P
	 gWT/hXv5eZFTH4EChq9X7oSJd6F54OiO6/vZnR6RNReFT/UayRyPK4OEMqzVb6VzpP
	 fAcYxzYV4+KN7rOP8Pv9QuMjMrTCncOyzrrn5cgpXsw/xjsRfqFmfOQoV990eSMl11
	 qB1qC7El6Cbjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92304C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755219357.25076.8049855760082421682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08dcd0fb41fbe247c6e1c80a4afaf30ffce479809ee22df572a52977136d796
Date: Sun, 18 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747552193
