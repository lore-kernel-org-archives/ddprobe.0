Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA99AD2F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738534554; cv=none; b=J3IgkyJkjYbO3f66lHqrh1x1L9dA918VhVeHvFXHfzfOIvBs9jJBY7Qm1TsWHr0z1uptmDL5gAwwht6L61h5LkiGUcdRot7fApJJM/58P50+hVJRkcgb9iO5Ix7yjcRCWYZ2iDj6+LerEghow4ku+czPzTn/Lt5KIAZLYiXlXtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738534554; c=relaxed/simple;
	bh=WnAiIWWyLAfGzCruWCuBsxWDFWd910MtxUR1qGYZzWY=;
	h=To:Subject:From:Message-Id:Date; b=Yii9JZxfGAvZZKuEHdmBHWg9uZfTKEtrzs2IixDR6HzvIDUTE2gGHvsQWnW7wsWVerzGptXKypzN0k3FFJCqfVMOMs6D1m2LDvcSVflIOOyVm//Zu1ITEharBE07yTSCH7dM1r6YtzI9PY8EZsl9Y9IGyXl79zJn6dqdKI6+nsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5T5vIST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5T5vIST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB16FC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738534553;
	bh=WnAiIWWyLAfGzCruWCuBsxWDFWd910MtxUR1qGYZzWY=;
	h=To:Subject:From:Date:From;
	b=j5T5vISTKU/JzHmxgBCZgLvbxW1o/1dwQreBCNyXnoBSIubfghHwF5Zp4S+afNNBZ
	 TeV60uJoItUOynGpH+HN3N128PvELVCOiN0A3SPuMklXsQltr8n+josBlPpG5cTBNn
	 ZAX9871AY3kyWUcJAVS7ZnLGMfxShgBOm3Gwl79QGMcMWGBpYa/eqPBJnfrb5XKI8g
	 lB61lAIywHQnwIFndjS5bbbQYRLYQXjEGEssd58i5V87Y3zociqzLbTkOvYhJrNstf
	 1cDc52nIzIW9Hl6mR8fq+/PEJrKrXmXv9VMkN04qJlVa5brfyDkMJwOwjLClJMHOSW
	 l2ukHXf80rIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226EC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853455358.17883.4495871629382888145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad16e4b23e4c08a3945f85efaa2759d0ce72dd0adfe015d02a14b4f6911fd318
Date: Sun, 02 Feb 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738534553
