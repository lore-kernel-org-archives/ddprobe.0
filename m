Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F908204F76
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743064794; cv=none; b=kUoyFXVMvvwAoob+S9GG9SacSQvE+YA7XxO0MOSRllk5BGk4yQ8mKBI2EPMNXqjV/bFORh/IAXBo8UXy9dxs2jxrY9EXSuK8YE4IePpkgxIHas7HRDLmImCpDIb74yXAOrDfcysTchC+Q4DrA0rIYr6mJMeYA68VB4ZWA+4qLj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743064794; c=relaxed/simple;
	bh=MAngjWOIBYjErD5wU9Pn3d2hWhmOy85hRYvrnT5f/Cs=;
	h=To:Subject:From:Message-Id:Date; b=NdbQQZngibcUKg8QnxaYoHswB3fEEt3efEFxvs8HTQZ7LlZ+vka2yg5Q7PpFbmj1F5XgJwXdvAIB7+geRrUPiuEcGFECeAdrjJsm77CzcnBHtjyblwoAywnjTufRlMz6v5WPuYD+ZQdMTLaWaBgL9X+r9BOlYoKkjr/jKWAg1Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sf+PPDL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sf+PPDL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC43BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743064793;
	bh=MAngjWOIBYjErD5wU9Pn3d2hWhmOy85hRYvrnT5f/Cs=;
	h=To:Subject:From:Date:From;
	b=Sf+PPDL03yKYqz7+F5WNKWrFZDWotfAD8tUUrB5Mx7cT/bYJJavIMA72QlMPb1oun
	 FfszD33dqz3kQIuhCNltmq9OWkbMaXBUnig6gW5wjR52X/0qox0NDum2EOCIn8bjti
	 3dCFR+din+5Xehpi4gTOO6idRyxiIeTRmrF+vANm74ETzBMHs4KnnKDDV02E2M/3jh
	 cHGCJ0jgauV4hbFK4IoBI+UtKd2/0fXNMFqQYnDBaKFomRctxONJBJeXaienohKya4
	 1UUCyKQwLDNiGg5lqgf6pXzRDM3eAx57WgTNlWfSE1qhBIywpFu8WL2W1hUqzy8C+g
	 rb3Y61kZ+TVEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B386C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306479362.2983.1084839327621856192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ae3f3be814022c08202bb87f65932affff517aad73dacf75c25b126648e66c
Date: Thu, 27 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743064793
