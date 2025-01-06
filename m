Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA1F3597E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736187954; cv=none; b=kMX0XHp7HAEQUMc6viH4pn4lZrDxRdHjRpEaLnYipsN/ErP2npJ0pNoBo4D5Ngr7nS49RFrApU7Iw6+9qs7E7PZCcnNO0A6RuHyPdhPsx4g3eNeMk5VzUOEgbWAAG6gvGPcW8/kmuHaz3tAudiTnDsmC1KB0VsX0ncl0iOeiy/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736187954; c=relaxed/simple;
	bh=qPxKnteEKzep0/K1/6bOTtoGTW8VZtXHjeVIb2d7hUM=;
	h=To:Subject:From:Message-Id:Date; b=AEwMkRfpTU6clblyuafXgsvK4BAhLOP+4m4T/gNi33zvcYCGEDaz7o9wRdPeMPUmDi/lQEaHZmnqNgTCtsZWzMjlzgGI+Vw/Tqme5pmeqgvsAom1tBZYhYtthPak5ZYFzlZBuSjNvCFlI/FRMXa7tJdX+M5jbuQpStVCIbC5tYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9WcvgCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9WcvgCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA02C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736187953;
	bh=qPxKnteEKzep0/K1/6bOTtoGTW8VZtXHjeVIb2d7hUM=;
	h=To:Subject:From:Date:From;
	b=M9WcvgCESRUn/waxcSr1p0FMSYf3ESucfQjF0SLz1P9rgBHIRuxmESquUaCiyXVbU
	 ruzrjj/MoGuHTWJP5S4dJyFsg42gPIpp93ngDmr4ReUrKZwXnfqkJ42QPu4rrJs2Rg
	 1jX50ljsWQ0BQmezCeMXxUUE69+n9P3rVMrnEl1lSyzLEZsOiHcqVB9RQmNdOWHl8H
	 Cykq0LI2p9DJQHQN90ahWXOBR+PJJiMW8qM5sKQgDpR9XLZXpUDFjjyxhlF+Ektcy+
	 fgA4ORx2XLJc0B4b6wRxePKcI0O2isXx9gJZ1DH/qG//CN5TvAWSiIwvi+oZR8fq1O
	 0e4dnMVh/qiAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39EAE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618795365.612.10704178233259483075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721071c3f7540d3ca55817e7da0544866353f4c3c416301a69a4478ccc04d73a
Date: Mon, 06 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736187953
