Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AB233C50F
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761233994; cv=none; b=ptwvjFz6yOwlNqjhtw2BqqPugfdtCUR09BAC0MeRzF4XhSjmx6FYJvI2WucWhYMXn0Cc2vidhQRAOO+ZPa6U6I/am5Ror/Wd7SXzy8rTQyBzgF0aNgOfS+zx+9cNhzfEYUpaEGuSmKYRrKp/lp5sEmBtQg9IPhcvqdKq1Hy8i2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761233994; c=relaxed/simple;
	bh=jCiSn5NngLDwptL6zEQF30JYgkoXRHAWB6KqGF7aV/M=;
	h=To:Subject:From:Message-Id:Date; b=dHZIDS3q5GXA0pnV/+xdxgHfmILMV4XYs+DygCp1m9AJdR7D4AdzqlmGB702zUiNroxMk4Sypez6pSzgElAmW9iDIBUT2tnv7ADrWI1SDIIB3NQvL2735Qum6hMj58D3I/cIk85MeaHCb2DedkfatF0jJmOwp61ETCU4Tit37h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sk7Rx9RE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sk7Rx9RE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF52CC116C6
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761233993;
	bh=jCiSn5NngLDwptL6zEQF30JYgkoXRHAWB6KqGF7aV/M=;
	h=To:Subject:From:Date:From;
	b=sk7Rx9REv7wz8OGKPsRHgQKcoatdaGO/BMmKEtpwOm0sS69XrB03uf80jAp61mKi5
	 ZXgli0c/spiiYh/d/SxTP0r3uNd+Hd82tNjhPwoJjlvcNKTYnzeOY3gDwhBrdh9TU6
	 o9ta67SBxmf3+XYTKpgcD3vbkMCqOgjwKzNmGNkD9fXPWOfETGBJZcmyf93AhzmbF+
	 1d1+XOOTgLKGAyDkP3Q7invUTGLwEkL7dRLFey43KmCOLjAlSfoAOwcGU+QKtbZCjE
	 n1JXQ7FJIfiTT3b6chmafmn0eSefcSreT8Er6mKHcdbuQ4GMVNJxEX4DdenB9lqFSx
	 9EqoT+9aq7Utg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F42CCF9E4
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123399367.21107.14816941602894393739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b6ee0766433ee9ebf36f84250dcbcd86de77acbc8335a4baeeaede03acb1ba
Date: Thu, 23 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761233993
