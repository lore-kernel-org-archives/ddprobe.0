Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54D817DFE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753833593; cv=none; b=H9ZS4HBklSjvVLQsj9Kv/Sl24U6qRcR9PZfo0m814yYoBHGpOfhuCW0JSzP2vilQYLU2PYki+59jjV3sZU0MwzLrJi3QQutT1Nslbvi+ClNB/cvR+qnzl6NWgAaAvkqRR3t7XxECksiVZ1MxrW+C1jzOR1QANZjAxY17q/SQjGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753833593; c=relaxed/simple;
	bh=iee9Zeq27WaBsLGR3RpdhjxyLn11b+FlbdJEAOsu2t0=;
	h=To:Subject:From:Message-Id:Date; b=tc3g8LGXpIT8y8DuaC8zVumMA/KsD1SNrh4PYVWWB0a6LmVOTxiQcaJ4t4nHx9DABl96QsSEG8lezhFGGCwbXgj0xos/P/H+u8XSLeoOh+LW8DeOH+p9Yffs1WE3TE7+sgwOv9TCIsZrW1fp6j7CwCPpRO8c9MMhpfKL2nVM6ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNNAIUOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNNAIUOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753833593;
	bh=iee9Zeq27WaBsLGR3RpdhjxyLn11b+FlbdJEAOsu2t0=;
	h=To:Subject:From:Date:From;
	b=HNNAIUOtis5ewTMkGXWyIgsoR/Z8ywiKo0z6ZBR78Q+69csXkMZRetE+OZ85snC4P
	 /CFvZMcbPKk58KdYhfINOTbonbTbdyTBNtlD/j6FpiH3SLQYOuJO4e3eeFk4+U36TH
	 2lIGBkIJM0LtINgINlBaWOekgb8+Q6dzbhuUAiuiDqyEJUrxwKq/p3HrisvFW00+lr
	 X/FRqH5MfOf96FdJpr0eQzyp4744Rl+8CPsgrSt4UisBCmlaW9G5hVfkWTf51zx9Qd
	 0hHPUDbWaWOM4gl2C1wsGZUqaqtWG5SRBohcTZw1UaCbE5udZNhII7enHO0AnxsfR1
	 DKrhtdCqh3qqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EBC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383359357.8431.7419235794229206718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72caf08ebea4b40276714147981de1e9dcadb7ad4abe77d87f1755f0b51d44c4
Date: Tue, 29 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753833593
