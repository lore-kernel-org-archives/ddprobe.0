Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E31A224D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763207994; cv=none; b=r4RogsdSmtNbYhPOV78A/gvQNjMNq1nE3X6Ndq840u3nFBKGEkneG6t4an/gMG+WGPgINcISlzoU4Yaanizk4TJx5YMaKozO4nw7Mc4rm7r8rudm/34CHdJBEYtwtBXZU6Ifo1r4k0kAX6j6pBQ39VWUDtfO/hykX3cTQsR4w8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763207994; c=relaxed/simple;
	bh=tcS9SG5Vbz0OOZNnMtKMFkMcN71Wcake6HwsGioiy+Q=;
	h=To:Subject:From:Message-Id:Date; b=sGaNi0emS8mChEbZVsME2qkJduceDeGavTCVMfyCX2GCMIo30Dpd+N5TmNvpmcLYMMhy3daaeC5nUhBeF3cfRH07M4DiB0Vzi9HhQQ7mQs90dh7Ixcl63ZyTE1DdkJqf+5J1NqqXNjvqSonKTKYiKN5YOoLM18eDlqgXEFKtJAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8lIUSI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8lIUSI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D10C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763207993;
	bh=tcS9SG5Vbz0OOZNnMtKMFkMcN71Wcake6HwsGioiy+Q=;
	h=To:Subject:From:Date:From;
	b=u8lIUSI+TSqwJA9m952XsdvplS+uxzKCVXe7eCaqH0u8gj6eDrI/ylLM5o/ijC+lG
	 expmkLFlk0cXT8Ep5ODFLJjC2kSCdeng5zgEU3mL5l8I5oMCjjK9PIwCa5LGYwmeaA
	 J6FMHyH1QFrvwb2TdHgPAiYb5ZjV1FbDij8mEcQJHC/kWE+DlS3+9BevjQLBRLcWlo
	 B5ydqwqjVnQr+IgqYedu7EkQ5Af8L1h6YrTJpHhHwAKFB5Gl7Q6Fye5iyRjx/4Mywk
	 VxbMos9KOp77OL4adr4j0oW91og5TndTy4vb0jARWY81To72lT0bUCtR1ZjwhszkO4
	 xhY9NTsKyfK0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D45CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320799357.15174.16737036179990407667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8397cee23132d238ed6ead56536ccee88811e89abe9607c864357953138bfad7
Date: Sat, 15 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763207993
