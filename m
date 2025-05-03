Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3148318801A
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746292794; cv=none; b=Y0DMQrSv9OP1IWTUiuvkJ2e9CQ9fZmvDF9c2NQ66n9jUFmbC2bxjQFNfjRO+OS722Ga1b0kfKFRnoUpyGzzoDyDXgy5q2vthgKd0KMEnAB2NtUrP4PLE5LLTbAmTU7/bSu3gb6j5pAhUFQysrxhWbYYVyaEUIQUsFNPn4NxlXys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746292794; c=relaxed/simple;
	bh=Qa/FwiVn/NIIfbFX52K0KNSiZ8kQyfoYIWn+L+4l0kw=;
	h=To:Subject:From:Message-Id:Date; b=kUbx8zdJ6Mmv64f4OTTXMFf3MGtT7/+O8ctOBG+lBpVljj3liOvN3xp3ZceJeS6I4Mc9YFyGxTOgibN6NzQhUV0C9r9dDnWLIVOGTcRbHGJYSsw4ESmCz0OndPIFcgWHvWVTBYAufovo3s6M+Szvlpup2uGpaQCV3ocCdbzzJ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0+Mazqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0+Mazqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746292793;
	bh=Qa/FwiVn/NIIfbFX52K0KNSiZ8kQyfoYIWn+L+4l0kw=;
	h=To:Subject:From:Date:From;
	b=L0+MazqfSo2QBG9g5rCG/Fw02aZ7N279mC5nN769LfHeA9O4HCvby8DLVSEcSZpTx
	 t2kpYAZFllZUpWwuHnAZjIiKUEaAfMbpTJo9cZp7cXzNmvaCgoLP4qHaAq8Po4kg0M
	 MLs1vMoi5o0HcbRpTJpk920T5pR9L55UGEymQKULuZr/aW+j57tEEpFmnToC1cuFi9
	 TcKd9Se7mqwYJVflZj/etM+mCPNcQ/GUQLkgyyeoqLBoQoeXKzO8NgTU2Yx7wjmF9P
	 1P82RNIaJ/oTHSgLseVy2o/Rs5GbqGKOnO6hr44EDhecRB6oYIpRhJMW1814RdFG/k
	 ug0SH2RNbShGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9FC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629279357.1768.8444799894369893856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048046544476c8ea10eef0523b4563c8f858ad4229b79b15f9fd79de01e889b6
Date: Sat, 03 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746292793
