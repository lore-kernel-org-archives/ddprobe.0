Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36343292B2E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764662574; cv=none; b=Gq81At339pnSUu+0m0emU2BDxCzB/XKoXEbdetgm7jjm7Icg+O/OmJnwJPHYM2SN6C72yRfa/ncUTqreqW7sELWyP6EgAEIGOMrYFjQiNiDNGZ+jqeD2pBVAdPV7D8cRZZCGHLcOvoxbl1K21R6qrnQ6embyp0/Re39Xuchg7Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764662574; c=relaxed/simple;
	bh=FGyUn9WTYcYaAP2rQRQUSgsgNcLbf3OaaBO0IrcA6EQ=;
	h=To:Subject:From:Message-Id:Date; b=QOhSqlrNxF6szP7YxgaVCL9cBEG6s/+KsxNGMcAym3BjCVO8PzkjXQmvdi7DVW8V1rdH0OfWo2XFaNNrsTYaS6laaXiCQIVWoWOzltKz5sA5Tc8oI1dlQE9P/nIuJGLCUq3+q1Vh0DmmJ9BVkSzT8TD5COXQWYRsAUPJ1fpBT+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8+KCOR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8+KCOR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB56C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764662573;
	bh=FGyUn9WTYcYaAP2rQRQUSgsgNcLbf3OaaBO0IrcA6EQ=;
	h=To:Subject:From:Date:From;
	b=T8+KCOR5vieFmjh91Nb95UkYG75tJQqqwrBLlFS/hSnVQIjffuICcVNx6KBOcwd7U
	 iRcYCE5Mn43Ge8qaMugS52L3NITgQ0t6WmEnldNSAE4OXqYpjIy0nUEpbseLFm1GYz
	 0l8beIJ1zbPwyjbUqZMSgiMPfnd9N9Da/6nPpara4EJgMo1WYTRnY5qCgAiJqdj1DP
	 JxIadyw52s5XbLpK3N3e3cV1wVb5IQoQxCHSMQK4ppNFtdmBMC9IhO5mEdgFO+MjI7
	 axnaF80GmCmWCjwNp02TsYOzCFqzwNt5tS5JZKOede1wENnHxv6eT1osYLRrDttJlH
	 iGWqxBuPNG3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CF2CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466257361.10671.9421987146596238699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2c474e12579e94a9b655437ddea2fb1724f905493534d3909112f181344dbe
Date: Tue, 02 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764662573
