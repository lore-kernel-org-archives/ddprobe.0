Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700D214D28E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717603643; cv=none; b=eW+JQK/+7ys+w8I9gK98Cwgx0vV8BZtIj1NjIqkbsks0+p5g7xPR5L+ijUgSJSwcK7bf4xKRmdletiZTYE4qQayKgbuA8kMOXXkGy58dJhuU5W3dnkEhTdyO+9kw4MSklgcSt/qNK4eYDOeidJK6x4JQi6Lcc+KKgR5R83fhqp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717603643; c=relaxed/simple;
	bh=a4gkkOrr+4Z2JFhtEIxxHMlDul58bmYAJKjrTfcigYg=;
	h=To:Subject:From:Message-Id:Date; b=OhuP2ASQVZTQuPJvbiuH2IijRRnF4rkAJor/5oWwNd3smLCSYqaORUVVmjjCujxrkKBIqL/HG3qoaETN5y/oEJ8a40+EPomhm4BqYgQ8fbdvBmisWi9N6nJ5s/xp6f7VGr+8sqNPqW8mp2QrjjT4rmCjsTntMB6TauQrkVgg318=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5tY146i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5tY146i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61B4C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717603642;
	bh=a4gkkOrr+4Z2JFhtEIxxHMlDul58bmYAJKjrTfcigYg=;
	h=To:Subject:From:Date:From;
	b=q5tY146izONZsZr5LZRQTNlm7shNhJ108GEY4MBkAo5v3RLFbrwsJGSmFb+8CXrJ7
	 8jXiTt5frXoyRY3PQ+b8Qdg+MJDRY/bu7EQnMRhfQ9vmjIdeiKJqR2WNBFrw4b2eFk
	 77tIqDGumq2nO3MrM6wLD7vZPgXxBfp2klp6Vre3SSmWTPIJRe9l1XXm9fOO3vxlna
	 VuQNjzZiNYG4HlM/1ygKlBJDMLX4QXw9X4jB4zeDNOuoNJPZGGYeUz5RcTPzv6/sIa
	 spKrxgLvGWxTBhkgj+OxMxULnLfecvKdu7KW/bGkFw02W+CJiSlA0PkzRmAI1+mrmG
	 bsghdGLi+xEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7269C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760364279.9298.14702083583286930955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4d7a411c7152077199734842643401a02565030f2bf14c39aab12e5dedec37
Date: Wed, 05 Jun 2024 16:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717603642
