Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7C52D6607
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769394; cv=none; b=MZl2fE1ukudkNAIAnW+jpEp9eBarTUS+ICNJvqSm80wzIoPvM2Jdw6XPDmUCAEV38OWW2xzO9soe2s6WTaDAMTtYmcpP6Sdvu7zX/PiZ2z2AEUSHQ0R+7SPb698OyWyh7VLm8OU6pQkxGVJ5jgkwKUInQ7gP+Wm062Aj2NJeako=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769394; c=relaxed/simple;
	bh=/xoiyIyYK7Xxuf1vJYFksaUGB+xW9UtHnQ9S3ODgBko=;
	h=To:Subject:From:Message-Id:Date; b=i8qrpzk3w68ehGQcjvGbL7OVYOfxmdIBzIbgnDTIh1pVWJq1hXnVTDghFNzDKCpk5/+ac5S4qBn/wosVMg5Kgh4v8LfsY1VLsszWNzpTdb1c/jhv5wkMF4DJWcOgPmRXrNmYjhqmjSSkctPvzJBfJ41vrFudlX0osmrVdhT4Heg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG4ujC4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG4ujC4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DDCC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762769393;
	bh=/xoiyIyYK7Xxuf1vJYFksaUGB+xW9UtHnQ9S3ODgBko=;
	h=To:Subject:From:Date:From;
	b=rG4ujC4+Opc2mnQq9jRLnLCqjwcV+KLHDuuzMCYoRplMgQzDg04LIYzgvFpGHPL+R
	 XLzGZiABq5Q35bPCR+ydtZv+3utWrWnv2cGGt4MGmK7QDPZKw92oz05BrMF6o0Ft6+
	 kKLN+B5nqIgDmT+jJiLOe6M3fOD4KPN3foaeP29Upcl/CxSmCqtBTLvO0F72/BfmVg
	 iMstigh1VMMCBf4Fo4o4Yjq3RHZpRmCeA51qV91i83uLY5kP6+seV5XCtQ/uZZPQ+l
	 ngq51BrS/5f8BRTetbDMPlmWZey+FmFbD8fLvWtbMdw2/leJg1UPbwMpedf5Nu7qKg
	 oKEUhkxX7E98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A602BCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276939365.21036.1021705579419887502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc35ff56fd0f3805d39f203f5abf004b9cf037b7f8371d04ac071825af303786
Date: Mon, 10 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762769393
