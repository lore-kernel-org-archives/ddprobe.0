Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203AA3C17
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749914394; cv=none; b=b+HAtoXU+SbShNt67htzPVdSITJxfz7k9zUGayn1g+V/xZhIH+UtxbkWXcTG6XPjO3Tiiqoc9XODhdFq7Aw3CBLWMWL7uyorDvbQp1lmBtMmwMQNyroF45etFFBe70zGIfisAiwKvyAOATckLaE0n5XjJSIB18DaK1exuVEoyjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749914394; c=relaxed/simple;
	bh=pni51AG/0b8nSCHRdVxywZMcXWyP55Nw9YyRO5nymGU=;
	h=To:Subject:From:Message-Id:Date; b=QVv7Xk0hnazyD44SnNqpH6X/C/D7SBzLoHEVbDL5+h6lB834oR9ToGMypIGyQCQSjF+JHCBCChHPfmlixvX5WxWZAs6HqWm63/BwWPmjKOof1HPY+btQ6+bku0QxyDO7PnSfOGt8P7VsiqJgdsMAhqNpfOkmrfP6arlJfHE/tRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drHQqCMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drHQqCMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A8DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749914393;
	bh=pni51AG/0b8nSCHRdVxywZMcXWyP55Nw9YyRO5nymGU=;
	h=To:Subject:From:Date:From;
	b=drHQqCMkQnPJDRlIZiQetu9LJARFTx+da+1fNR/Or7A+iY51O8X7M+R02OCk9ercV
	 Ba1X9HoetLpbEIiKT7GyQ5+XLktJuGOzA6kAaCq+zqeHiNjfdH4XWgRuvw4pNNStA/
	 7p/9nDJZnyGGzrDvqAIPBr8nvHrOQ/Bf3iWiXyF/EeWiZEj4Q2TQk9RZaCqxpQ1hEt
	 Cd7oa1yr1jjnvrR5tBwpbxLLRP0fUZpHnqtZDem1HAYpBDTnNpaIMV47qgltugJ+Db
	 fMdvjSvyPtXxacgbVqgMfnkkcRPQ5r2TSCbaFsLzG6vimi53ayjpg8LfwZXAgb/N2U
	 OZihsyxWvz2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B4FC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991439358.10502.3184342060586276832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb9a38e5d075f23a58e710a952e58a1156cfcc8ba965372426227ab449948e1
Date: Sat, 14 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749914393
