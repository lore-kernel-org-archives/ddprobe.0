Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D514E2248B0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765222373; cv=none; b=opGjcpWlWhwy0Egn1CfwVjuWnKEp+J/V0pDCozFCJ1p65UJVT1ozv4lJUyvfskYreBaUVPq5gDcrEXUTELImTC+L9TVcvNE1tfqZUwToBDQt/q52XuHHddL1jz55Trxs1JhSoKeNMqdaQej/55sqO5LlT4P9/jI+4N/UmvUxXHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765222373; c=relaxed/simple;
	bh=+0PqE/6Ja5/UHfXd8eCTdJoiLLLhjKFCLlWxWhhWL4s=;
	h=To:Subject:From:Message-Id:Date; b=qmjq1Gjcm9xKRfrkjFy5htb7NbaExjCzX4FpalnUn0KaMvbI8VsAFQcoUmXQJbuGe+/zkMhzf5bs7erd7cYDVqvBGTiZQlFpuKujPfvbNYwLRMG1YWDkrnJWCNtLYL6Wxo+iRh7z4kbYF0nOZosrBvjFS6LdkobsuzG5g4VtHRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7fDOAnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7fDOAnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA991C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765222373;
	bh=+0PqE/6Ja5/UHfXd8eCTdJoiLLLhjKFCLlWxWhhWL4s=;
	h=To:Subject:From:Date:From;
	b=X7fDOAnFIbv1BlwtznC5YQR4yf9AikMVMazvNqx89EjjSskXh7umpSvrfqXMtBjMu
	 J2Bl+ucv+OUzow2szHBClZC0ETCQj/wdyQv7GtKUWOoXA4Xa68vJJ8ln68hOjNANMA
	 euk0zjE9MDMf4+oE/SHXT0OhnFtFnH6F4oNnB1mEFxjwy/K2jTk36lXHaIaJjq3WYn
	 8b2AwGCV17eVcJOpnf56Y9Oa/SB2tpG7lEfazkChiE6Yj0vcXnlsr5ERxisrttDxtH
	 KAVitMlZSyIqcJkwtuAto+ZkKjRcw/0qq3aNfGfEaAQy32VjVoHme2tLM18L9bpULd
	 4Gz+gOmLo3E+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DFD3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522237358.2007.14052554407313092983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ff2e39dc0e4f6d9fed07efcaa95f8ebfa67a0603e7b4d7edd2d4d8af896dfa
Date: Mon, 08 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765222373
