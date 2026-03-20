Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9E731F99A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773992694; cv=none; b=YvDcXWJ4ELAw0FvngIk8vENb+5NbV8dbNz0RYkJ2/ERFn4WuYw3JmgTOAtk/GtylHFM0Jbf7fwozH8/+o5Ac0AdC/0UzWPizZPEhb2+lnqoBe6g6n+TC+1IDaMfNc/ksWbtNCtlgr4m9iF5kWchdRPcskXEm9aij1vxM3jWHJKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773992694; c=relaxed/simple;
	bh=vNGV/GLCrokEzeeE9Ynwn5Q7F8du8f1pvJym+3Xaa/4=;
	h=To:Subject:From:Message-Id:Date; b=ttBZRIqt367EIUSuA+1FBtyLlceg0qXDlJHJWNz1rvgnugatEYT5YXn5yeyNNsHun2Vt2M7hcTVefvhXqrLpQ2EOBRhrVXLMEr5ArUuGUaaO4yow9ZQidMoEvv3wXnK4JQiJQhaJRmG3lArJxam+LyuPP4FIsatlUOOb8nk6vMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqogjhyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqogjhyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773992693;
	bh=vNGV/GLCrokEzeeE9Ynwn5Q7F8du8f1pvJym+3Xaa/4=;
	h=To:Subject:From:Date:From;
	b=YqogjhypyW2ckXHZnLm6dz9qvXI0HNRKoWhoLuv3OInFU2n7LXxW4gSSoKCQVPm+L
	 +nl1HQZjJRxkGHRYhzOsw746DYx/5m/1amTLF+vAX933z97YSmeF9gvAxtvEtaOt4a
	 bbjx38ae0YWl+ILpcDIPLLclmdkMdoFQ4T7YhRc12hBUF7CCQJwnWXhg6aoWjM/NAi
	 YypB2BIgC911BLL1j8k8p0YkmqZVnDTYRexwaQYDxGRj6h//V2Ath2Ut7GaWJbX/QA
	 5FVQ0WN8ESeh0/q1JFEOexGQ2Cod7zjhf5Dm7XLH0bshmLFvQR87m89B7l9ACSKzEo
	 MwOTx++VDGvxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBD1093182
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399269357.31706.18340382632352653287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d328615262c132aa8e36a0d380e74761a9104978ffabb6689bf5d2cc66610c9
Date: Fri, 20 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773992693
