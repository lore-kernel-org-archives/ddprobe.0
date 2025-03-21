Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595E09461
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742522394; cv=none; b=KoBjBecwL3Ensyf9vy3QipFdiiJo8LOzkjA7gQ3PepjpxDRuLxn80M1PGFZGhgKNXJh06o1lYWZVKyddgnCYxcUE7zqJbXvYUPDwhVL6SQQlwVyxHr6l2TPT3aM5k7YILRHIVPJeQwBfXZbHNlPMadlqxjW4zbREF7uL9LbmBvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742522394; c=relaxed/simple;
	bh=axRIOLSCkfd4j/EwJyfv6jFmcNmwY3qtDGVn7YFe/Ys=;
	h=To:Subject:From:Message-Id:Date; b=Bz1ZLGkrLX+JPyBOmwxztnEiODU+jvR6GDSGNCxbFBA6WZ1kws9iiVEt+93wOiLpkBnVrE0br9qOVKSC7ojTFC3IacPv4JrUnktLHxwI+qxxdFCswi/GkUSj0CtQrcCcei9v+IfpCaYOd2/PVArKkgnzam39f1PZ2Lk0ZDlEGdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEHGyDR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEHGyDR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7646C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742522393;
	bh=axRIOLSCkfd4j/EwJyfv6jFmcNmwY3qtDGVn7YFe/Ys=;
	h=To:Subject:From:Date:From;
	b=hEHGyDR0QsOzY9mrp3jA5W4t2nkQlDMfOmEb7Hir9OF0OWiv3WRydkV/5D3oqm6hR
	 86gVjcYM2pYG9svUknIOg9hxGW16eX6tzgA0JMlomscY7gcnXGQLuaUoIQNKMZ6Xo1
	 e50Q0wOA1zh58Je8HrxOa67YpKNDFtfBzLxKz02EaNHrLSeSQSfWGWnsY+oErNsmgO
	 wpFui2MJiKjGyfe7Brl+CJaIiOuW4qHuvmQjzunoAdWWRiEX2J4eIW1UB39FhM9AVN
	 /If6I7WGAj0d9tWGXYIu1Zm1BKNV/BUUS56yxTnPT+sn58AsqVwTdENb2a4CNak56w
	 l+NE+FD6fdtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EF3C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252239362.12078.8470375246322313535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077dd9e3c85aba075c38143151bca1883555c49690f9fd6ab1c370164d40bc68
Date: Fri, 21 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742522393
