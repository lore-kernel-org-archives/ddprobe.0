Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FB035E951
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774187694; cv=none; b=uDwAQulvohS6FeAJ2f5AALwCS0qfUJ6Q9jaUvdtRq52Yp/Avp/thjb87afwtAiXOCxVtWH9B/N68xULQbEN7WgXGqMeKJLdMa9iVlLDEFBeo/STWIvw55+unOl4P+mQgEaw6KkSvqOIN17AtOYJBPcGM5CIRgt/LCmrtuiIuhSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774187694; c=relaxed/simple;
	bh=zaZNfmNk5A9Rvi0dN3I6jLAiJ7D+UJFwzDEsWIU8Us8=;
	h=To:Subject:From:Message-Id:Date; b=SuIFwWCNqPJ5e1uJCdht8t4F9DqhZAcDYsB6YHGeNEV7iF5UfJunn2C7Hm6qECUIU5NNmNYunN/q5zLibuDeflnKOreU7TZ/LDuVMsLNBG1R44cDtQFTEVBQOQBRbsbpKgkkKajHkKXJHxWBTWnHSGYZ64XeOZcvGKbEGs4T5D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB5k+mY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB5k+mY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA988C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774187693;
	bh=zaZNfmNk5A9Rvi0dN3I6jLAiJ7D+UJFwzDEsWIU8Us8=;
	h=To:Subject:From:Date:From;
	b=QB5k+mY+scjvqw5gxwLBUni5yQX/DIBGYdfnBXVynN18PO3HAfFbu/lhTSD3d0852
	 +lorb3x48KIBzHFW240GY4pZbweUiw24/geUrGDdBIgb2my8SOVUYrfzfznoNabwTY
	 bkOvsJxb1oHtUbsVehST4pFJCfl/mv89i05KmK8I1NbqzAFU2W0GKn+lGjW2NDDWHI
	 kSUQnW/Yal8Yh5ad3KKL87kgTGnmgXcQdJ3wD992DXN7NANyV0rfhp6ojVhivUHQ49
	 uiEQvD67oyQUklwJH3uYaRaj6nmQnKaDgQRAukMM4MTafeUCRP7TZDuqPN6tjsws0a
	 hk27Zw6z5X20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C87FC72AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418769358.8852.17538029534670556035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2033b9fc56ebaf48cf6dbcc65ca9880e45e8d1e79ee9be2b383b6499dd4b9c0
Date: Sun, 22 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774187693
