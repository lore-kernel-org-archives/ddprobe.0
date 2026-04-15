Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D03217D6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776213454; cv=none; b=OsXbSyz49ri7zXY1dG9kw+QL6OII9QwZuBfyYDVu7cUo/7UC+3GHT3rZloB3GmqEnAiDXVBlK+7b4qIu3Q7iXHQgeywVFpykx5+MBMFCi6U8ppyQ3ZhSvqsC5xRmbT35qffCsiwam/Gf7yR9O1YD1bwB/d18vaxl79Fk/GKGAPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776213454; c=relaxed/simple;
	bh=2wUfXxg1kc7ZFPxK6ZHsr6rN7dff31oQmQgfDyelBp0=;
	h=To:Subject:From:Message-Id:Date; b=K4+pfcnRnZIjFR85CwCwVoU8r6YIZ7htsxAYXiZPTnMHmKGvLG3jN3zWa6EliINfwS9bnwt0C8uxt4mXb5Pocdkj0SZZqmWiG72Z5i44ADsPyWniVIeGXkaYniz0p414t77gzGSbqp+n8CdYhRCFLM5RFPEzLjXQQ29D9rYdU9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe1r7qbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe1r7qbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB7AC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776213453;
	bh=2wUfXxg1kc7ZFPxK6ZHsr6rN7dff31oQmQgfDyelBp0=;
	h=To:Subject:From:Date:From;
	b=qe1r7qbKo1UPTeL7q8/7TYLln/UGUhvBDv4U2hCyqec8kJqFYnObfML791NBpFjIR
	 y0AUcWyqIt9lEWBOdJYZsliyzt7QNxG/8n8t+5J46w/RvhLSVCnnaqTp3VT+em90LM
	 hxciys/oAKfwvbYsqJxDTZ30cIh0Sb1H26yzPdHuNLLq+xwSFa0VphaQjWmqQ/Gzox
	 itHlVubpob65dNzQlJ3H6g8AJmNCg7r6RnN1tyQiicucEeLrEPvuBZV6yri8nKiCWP
	 lSlR7UfLM0A4ba6NCI1eXZ+SNr4smp9r4R/rIn4AYW9mPgUcvOefs3QX7riuttclCB
	 b2JjJftACltwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF291F9D0FB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621345368.16108.11514438095681152890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dd8dca807d75d169e63c257ad3dc43479afb2ca8fe9ab66973da8f27077030
Date: Wed, 15 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776213453
