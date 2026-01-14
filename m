Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F41396D1E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392838; cv=none; b=JED2WaC8sMKAiqOYGQqTI+T2gzsBzBGEz3y1fxL7LXeQyjkiOGlvmX+3SvB3muE0YLMoSxsayIFyXJEkBiITQ2MPQL0lZka3G80eDQ1XEO56TXYTg8WBDJjSlZ2Q67FdhnguggSiPHSUj5yNP4CKo05q6129y28N009pZPMtrWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392838; c=relaxed/simple;
	bh=j8sjFLg+E1YU+z9v4NKIgNvo02VvYn7NwoNBP4RkBho=;
	h=To:Subject:From:Message-Id:Date; b=q0sseI4TwaPKl7X8On27CMIZKvNRE+7nEKe4LafXogYtRtkBFR4FpsMH6uq7agUUfuE1BuS48cNRUm0iJDK1Az0LUYHlPsS8XLRGPiJccM/lea3pn8attNPhpdZQJkov08UYeHxn/pVTnWm+WWVCxYw7rdNvJ4Hf4ERc/uu2xZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xvdyci4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xvdyci4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768392833;
	bh=j8sjFLg+E1YU+z9v4NKIgNvo02VvYn7NwoNBP4RkBho=;
	h=To:Subject:From:Date:From;
	b=Xvdyci4yjOZe3EcxXZibzFYavyQAB3fJAm27r1pCY2NDUfYC0fMaiOAsHrLz1DlOz
	 xOIDK+fOCJDYi2p5qw4AcrKhM/gEIJUZiRyotJQE5nBFwe2mlP0O3vBaqEwa+vZ1I1
	 6PAVfeHSKurGB4kyf5r9rZ1bGyHroB0JbAvdy37nsQFAXiD69FK0m3Iz9Huv1B3v1a
	 fS+BK0TB+/MprHZUoG02g9zHxXaYRAYfuft+sgKGT9LREOR89vTYoCMMzTbY04jOX1
	 l6z3Vhhb38iiiEmyVlxFQ1CXR6vlvwP5dBDmJ8IHuPM6PG8vxaoN3KbZ8YpluEOyIn
	 +zt0Yzm9uJe4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A1CD29FEF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839283358.7798.4274130665468338768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b1cc1b54efd770b9b37bd8177620419be6e2c311dce91278e0e9c3eb9528bd
Date: Wed, 14 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768392833
