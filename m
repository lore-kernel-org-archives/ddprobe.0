Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F348C2BD0B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769691834; cv=none; b=eF47LSAtsXETccZsFibzGZe566hF9Nz4QQ1R8jcYtPZ5jGH8b2LWUuC1f5QYav7owJzXcVGTy7NfCPGLMUqpOv81f3QXpgri+c1aytULWC4v3iVvYi1OnFDoU0BSXU7Dgozz5HzjtG064tljvbk6ZEVCLUrR9FDNi1y/OuArm2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769691834; c=relaxed/simple;
	bh=b54mB5kwQrl3IBo32pY6VLVgO1HXGPw5G/ZNOv7q4Aw=;
	h=To:Subject:From:Message-Id:Date; b=bcY9wb0ySBXEqDh18WdcK0SI4P2djzbprvegDcK/j0U4KFrN1WJ6a5aL1C/xvkAuG+gUxQLNOyuIaAt/540JzWRZI8T9oR1ONLYMYzwqhroxMcP37f+fji9+vYrcKqGkbcFNVJxDverCnyDlxJio18N/aSIsvjekfYBR1mungFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAI6G/eJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAI6G/eJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C4C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769691833;
	bh=b54mB5kwQrl3IBo32pY6VLVgO1HXGPw5G/ZNOv7q4Aw=;
	h=To:Subject:From:Date:From;
	b=ZAI6G/eJ0q1s3Ak7fVhPfUg2j9DHMvalhJrWTyO+dZuP7xqX8M+J9epAlIvS0UNlP
	 eCKlZMC6IJXjZ+4CciWGIBMJiUoV2gKNivNACJMipjjUwzopkjQw23FdJQ89XfI2a9
	 yzUe3WEIkJTpbTZk+D4VG6Pib/fCG6F1t+RD9Wa8FHatDCesWf8CXXmgcmDr4usL2V
	 q7Z8FwGJveE76LBVhtqUJk5KlznDak7e3lAPXB/b/rFG1FAwWCtccK94r6kCqBbQfl
	 anSfeDmH+oAhzGO8YGbNbAsVSX2moXwzu2OKZxweEnmCpMPM3ipct6o61r4ghr+kuM
	 mWH7QTbN8jY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95030D61013
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969183360.6967.5905931233412594552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11943906dcf9f19de460ae18aaf134e08d696267bf31a2b83b9793ffec2a2fc5
Date: Thu, 29 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769691833
