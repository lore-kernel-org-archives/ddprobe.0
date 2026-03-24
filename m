Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1238234F48C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774371294; cv=none; b=Ga8wXn+0GMASfTiKWfiE0nXkiZizMbOZGi6Q0ndUfPNqLW62HnPMILgYXyMkDMf6HTUljau5T06n58Fm0CqXUEtxIw/PFiQY4RqIzNJqSVe0dIISEerj8/GaUsMbmXbaD4hASTJc8iWtYtQI2SXgY/qDa2FoV87EMzW06QJukBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774371294; c=relaxed/simple;
	bh=7cCBTOex/rbAiA+0Cext/oY/9Bqx6mNJBSAOtoYZlwg=;
	h=To:Subject:From:Message-Id:Date; b=uMS6kdHf5nK/+QZqb3Z1JlEfVVAajEVl0+xk0MqtrOGzGve8QNCQxojty+rpURJf7FWTTuS2OtnYRpTm7drDnLVjKCLRU3okrsRNzm0T2EG2XQuWrhR3j4dczyRuVSqaxt8YdY0QqAxclOPpGVxz3QcXtLeqLyHS/V5Itp/nIO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvpHyg2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvpHyg2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2ACC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774371293;
	bh=7cCBTOex/rbAiA+0Cext/oY/9Bqx6mNJBSAOtoYZlwg=;
	h=To:Subject:From:Date:From;
	b=ZvpHyg2QbmhtCNkUKsreQqyCfyPqRH/+bX/h/3auK+05CU0gD7eavSCpqO8iu3O9E
	 n+8KymiHbcc+lTZrJt2plflp3y3BQDwV4hn41T99ChKu7bkVBDQGLcjwidjhBPmyAY
	 BEZB6MsdOkiwNlVE8Dbc7zV27bt4AqHhGyvknWgGhmZQBV8dXiOuTcVTnc/GFTaL0h
	 eaoOG/l+CcSLE1dZlcneylPYiTOg3O5dFZhXiEDVl02QRHuYfp9+tEh2JYBckjaERi
	 nRUjKu2dso13AfoVY+9r+D+svNLZlPY8oITS4ZoOjoDxV258mFB20i8Z8aDc1N0M9E
	 NbPH35AcBXWAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BDF54ADA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437129360.14568.15702652141909365608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fed25e7c27a42bf318689acedbb336e87e97a94b07f52478ec79c9941cb1db
Date: Tue, 24 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774371293
