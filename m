Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57823624CC
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772797493; cv=none; b=ov4ZGvBK1S5I7rgzBp9EYzoUrLgZTfRlDxeDFllwUBlYvWCo49PgMTd/61xXnmLNASyr1asmUsnihdX7jVfUheKtjOX/jD8G3M9vjp6tnp6VzZlKI6LhscTnbhABLiQPr4VfANTEkbvNet/1a1Bbv5LBvNXDDCE+VeuT+qHK7kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772797493; c=relaxed/simple;
	bh=ROqp6HhoL0lXoa5Qq1n433DnKTFcfRwxmVkqx6qH1PE=;
	h=To:Subject:From:Message-Id:Date; b=f17pse/9yUmoIQDrFe93kSJolX7QFAaX60Y6IwwKFGRICy5Fvtyg2DxEg7mUP7DQjQ4sWMkdTJqNFLUwGg16S1DYk1cRsiXlpRnwuOVLdSjuolIBpKcDJMg4DnMeqkeI5UTjc0jomF4RhRMXVw6GZ1b9u4AiM0SKDa63//UqhkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLqMHYac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLqMHYac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772797493;
	bh=ROqp6HhoL0lXoa5Qq1n433DnKTFcfRwxmVkqx6qH1PE=;
	h=To:Subject:From:Date:From;
	b=oLqMHYacxDTPtb5DOlyPyw9W6BFS31qBnhR77/2ErITs6IL9Tn4dbZ67dIDyF5ZLn
	 Aj20uvxo4haGOqNq1Lq5ps3uMBfrg8G8jhvJFlXjRAlqpV+W/n7BTn2qAYohlEF0HO
	 YIEcH7Lc/mj1n0WQKgTCmMVyq53TrjoH4I4ck0KayCp3xM4dtzbkXp9qFwtYf3Ds5Q
	 eOgI1h7nGUcohmpbSwxW0HaEXKs8gs/o/GerwslNn1bBA8NLgzd1dtMSiPxxSs3z5n
	 o7UEGPaO5KeGCFsWfCnJoJ7kP2D1kwR+AZNX+Lv429XJhEfG1uQaeLFvIFdGwGmobM
	 YZRe1/MRPp9og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D70F0182B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279749359.11164.16257888885098502035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636dfb4906f6ff58436ef26aa6d2594ee553bf3ea398f806905b8a6af87aded3
Date: Fri, 06 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772797493
