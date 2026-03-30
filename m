Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2291333B97B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774890294; cv=none; b=qAkbPZRsfaACogAdcjqls7N9oDznb2k6z+bNL5kd08T4J20BbXIdZ5tn37As6fWyq0L+SI86putI63hZaeJFj9QCxaEXUzSLbGt4l+wOT1p5caG+4o6Lsz41ptlhDEbwQ/pPO8dttpS9mfj27qzCT85XMEYjJlFpeWIjXGirLFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774890294; c=relaxed/simple;
	bh=+bvr6n1F36UWLvUHI1y4mcL0FQJ9EJTysIsxseJ48tA=;
	h=To:Subject:From:Message-Id:Date; b=gSKIMsglQotXhfYnT6My3rWpxTkW9k9ZPhCvNc/YdHSHZHPkwQm0+DQwIeS40xVkyhfhZxljXMtAZ7CmWijXAOBOihgLsO0KjKC75tHJA6/2nML9rIi8dhoQI8s5weNcr/jEn/eoizjfVuQh41pr1eBzE/0he+sN0zG7+JQi3d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQdMPzkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQdMPzkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BA4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774890293;
	bh=+bvr6n1F36UWLvUHI1y4mcL0FQJ9EJTysIsxseJ48tA=;
	h=To:Subject:From:Date:From;
	b=LQdMPzkKv1zmuVGk69QfHBiq7Hea7yMFAcYtwh3YARXVzN7/43tLN+H9MHDsC2pV8
	 PmEKQzsnmiIUL7r7FN74K4xM2AMFqf/293DprL4eYofwCP+6qU5cvzy1/QLmcr3kLv
	 r0lxwQYWVwluh3Ic5hZc3frsEwqQbgJm39gL5LrifCjZsIjGo3V12UqpjzEakxZdvR
	 NLiZjMcCJn9PgGUobJ0CZz/bRop6yrtE7gLZKNfOeS1+1V6a8oRU2cw1Vd5etPktJF
	 h9frUjdGEVeVJoyF3jifJgRxhIJoqBJnJz7ErKvGASia9P6TClgb7aFwEApI2Ixt3s
	 QI9ZhfW/SH9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1EC1061B16
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489029360.19223.4380199481932691020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6f42fd647db65ba017710ad9d795c210690edf4a845012dadf87a557ff8eb8
Date: Mon, 30 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774890293
