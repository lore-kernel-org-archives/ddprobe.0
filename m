Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EEE17A310
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746718194; cv=none; b=aoM4BezVcNPyvROb2z3UqXPfKB4l3a9zCkhdOFQW0OhNp8HTL6O3tGI+yu8oNR7ZM0nAgnhM5QHwDUWDw07Q6T2oDRV2kOYCXC6azZJ9iXY4Wsg0hgMU7S8/IGVn/y55DmATa+y6QbuDwvWEKRub76jccbS9cDgKj7dh81nEnb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746718194; c=relaxed/simple;
	bh=wmY/m6tQyS25Msxqzu4RzRelhbxCHwWrWrvo1AQC2XY=;
	h=To:Subject:From:Message-Id:Date; b=Bc0yjjZNEJTxe/p+2bDV3k+Xb5EBH06gCO1VIKwB3nSakYdEsdZDdcxgBqezNLrNl5jfC8d1N/TOJtoNqWFoMGDc2/ZfRy/iTX3bIvnYb8gmRn9BL4YoBnJUJkTy5UpJsEzKcrkAwomy+l12eO0kibHDP/3wuZcy4cyRnmc9H1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzVXead5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzVXead5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CACDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746718193;
	bh=wmY/m6tQyS25Msxqzu4RzRelhbxCHwWrWrvo1AQC2XY=;
	h=To:Subject:From:Date:From;
	b=OzVXead52AlZkWYAoQsqV1EAPRYdLEYcI0isWaRVUmTJp9MGY6PuKjBPxuzl509Fn
	 BZpDqMiP/a6QHWhGdsxL7sESDeKoLroHX9IIv+rkqzbJ5yxdRUTpl4rk6tNlGUoG2j
	 DU9RCPa+4cMBQCTXMhiCHlDSh6RGY9GnGymHwnjn0PlWOjddq8Ggt9QEDBYGVU3rl1
	 c9eviAoFnYJeBmkq4I5SUefuDWXNog2XOX/OQb8gu7hDSyxYxnY5gXC9E0p93B0AgO
	 7h9VNoRvBiTHyiZuOZLPxha53Pl47hBkwJE3ZoiqL43oOWFm6Q7NZLfBywaWFR509p
	 21eeJCCwEreCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDDAC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671819357.9107.3831579072780833396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf086c078a44825914d402e2262a93bb871c94024ba84f42df27a55bab40dd80
Date: Thu, 08 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746718193
