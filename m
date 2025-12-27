Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154107E0FF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766822634; cv=none; b=rp1u9Yoe9Xmz3jRj/8HnCZU4UJe8xmx+JCzRdtd3tEyVkg/u2FlLPTsbpS2ZrWwW/5afcoUXETdYOEJcL9Pe27cbkreRPj7mWXLBwaJdHgzCNaO2Ip5wwHf7rfFDWLI/vHxMAjK+4KCwUiE/2HL8wGFfbhUB+B26tb6v5XLjrno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766822634; c=relaxed/simple;
	bh=Riv1au7KKOkEG7TuesHfo0xZ4PLVjRwnKvMW60+yZ6s=;
	h=To:Subject:From:Message-Id:Date; b=uN4sPeWdEmkN7f+3TSzbO7pi6B2f7swYCgimryYs4Zixf+EWQFUBlt/2YMa2Mnp37I8g5ngUWnwkeMYxk6qbfv0/Jzmp9mnTSEnsS+bSVv2vuVb4NzaK7jcGQKvSnAVYdA8TCBAGWYrGWk1erFl4xBnJnjMHsH7vZmOZcttSaRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gttsaouR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gttsaouR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766822633;
	bh=Riv1au7KKOkEG7TuesHfo0xZ4PLVjRwnKvMW60+yZ6s=;
	h=To:Subject:From:Date:From;
	b=gttsaouReuI2+ZrQkHOIjCfzeGD1zBmBGqWVUmDSoEzS7r+fS8ntPyr54LL3naoLT
	 b/j3zkZWOOdMHzOhfnUcM3Keyq5zBo4qvDRf0z6LRb3MLQNUam7r9F12fm/+uABuLP
	 GlRCAO/+TQILZH0akvbiIJPTN2/VfBcr5oQlCx3MYupfSp3CxVXDE8GP2EecRe1v/c
	 fNEZOXmN6dsS0vjNPXmNIuktiEdZ+NUUX1YeJgeh5CgGXKvKJCWLbCF1Bl37IhFOv6
	 PDp3K7xJnYCWs9BmWYJHIgfGyQs9xUJfaYrOlJR2EJqrhzsJ6RKIMrRqP27J5HAgp+
	 QNPbn3tAvcDug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F0E8FDD3
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682263358.10558.13979750338980868769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6888ad7082e99cfd4220c79e54c2e7ae97171191af0d63ccd55af410382551f2
Date: Sat, 27 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766822633
