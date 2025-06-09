Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C61DD9AD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749472794; cv=none; b=lwCKVUeEP9XCpnFRiba4MWwZ0s7zge8uRh0iLTyoqZ3S+gSY0PtRwuEB4SRpI3jcRpe10L2CawSqYd5Cl/qLD0I5M/7XHUiirXwZ5WJEruDuDIu0QKTSO+i6tf0B1iDaK87XBrCYNbcBDnfmR1ocGfcKaH5rQAVQtATod6loFZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749472794; c=relaxed/simple;
	bh=zqsKV/FroLQ8VLxHoEDnEHlRlg0BDxogSZhVxbx2iPc=;
	h=To:Subject:From:Message-Id:Date; b=gjC+sz6V34u5Uk8ypY5jEIIY/AMGgl5XiNIpURdFj8cN/gLYRs6+eMB9tz6E5vaMY4VNb+1x7FAmHtX7UN3rBOPxx7+Q4sZ442Gf+xk2t2Oru/CPGBtIqLbPQwqdH4uDG6I3e/J4pTzfqeUcXfHRHisvvzljhc4tQ3jImkoJW0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW5etuZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW5etuZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BBEC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749472793;
	bh=zqsKV/FroLQ8VLxHoEDnEHlRlg0BDxogSZhVxbx2iPc=;
	h=To:Subject:From:Date:From;
	b=QW5etuZGaKHzo/jmUr5fJ1pbHUb1FpxIhYoU2+eqXlDbucroJBFdTa1da3UwLrcDs
	 fW5joHHshEA+VQkizEP0ktmA/nhtxvmb/s+5SJo4QQZWqGIOKAeJ59q/n1EykQ8bSp
	 faTvPdkXJZ9rftW9NjyYIPNAxvOLh1AAtIlUBE2oKAdFc4zYFP1LreofouNCeUidnc
	 BAAncodDRZBBWAFucQWuc1fnO3TpDtVbKqAsbioih/kQ4/a1bytG81B7b1Bnew3Dzd
	 Zsbpbvt6fxTS/46Pp4A+daEU3SAj65FSId6FLGpY9/XQm+VQUd40PtpzZn8pRyGHdn
	 Y688+pSXCMvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9889CC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947279361.2279.17071848410143822759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086b275d1dc964e25bdba8e333ea60fbbcf2986343605e3045e033af94c5d93f
Date: Mon, 09 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749472793
