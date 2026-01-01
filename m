Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACCD1C84BC
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767288834; cv=none; b=BkugWhOMIDoG0AOgI3Yz+iInlxVWZ94bpkOj/EamsagRYfq6KKSOC9qCHfQPNQXpjBOfa5rm/rbpmrdHimv+OU3gLfkI3n4AREdIgZ3l8H6xsA4vm5gnu8GlimMiIu8yp1Ed4h8RefjZ7HsDwcWY8K6lm+XjgJOXTPQQn54CWQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767288834; c=relaxed/simple;
	bh=hWll7yuUbhp4oUPYn/rHvGiCke5ZWx7Fkwyb7guqNhk=;
	h=To:Subject:From:Message-Id:Date; b=DtUXyNpg56IOsQe6e/VwgMdllpuRoCicjAzeq+FyABoahI9Q6xEk9teLTWL9WvD9h66y6yMcB1gmjXkLm2M/n82ptTPZhbi1bOLY4KsPGWyAgX5SXjwa20pBraHdbM1pEJeiAOG+l5kp4ZrFOiikIVYyJ6lU5HH2KYyyMAXoQQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNKCJVqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNKCJVqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF26C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767288833;
	bh=hWll7yuUbhp4oUPYn/rHvGiCke5ZWx7Fkwyb7guqNhk=;
	h=To:Subject:From:Date:From;
	b=bNKCJVqQEt+Dkq1lwhBdZ+9zTL1CjE0h5Ic7q0qFCY4bfkVAuGBSTa1MOpTsWt0o5
	 27Kh5ZlyqtpVWz9Nc8rr8sFuqz/KpZ+ja/NnHi+bvp2xdE/ub02/lBb1JsxbhDj11h
	 5qlLRLKQBpV6ssLYzkUMg/uvyA8AyLq9VF37wD8IwWhFdrLuzEiAfVk6TJvViJ+7IP
	 6RE/nxj6yJac/b8PWLlkdmD2Fgdl1I9LxYUJhWE3cQ1j6AZBW1E9ZE4HLjNhy1itw5
	 wRDBgXTb/Iwm3JVQ0NJ1ezFJQnfN+nLyrwRHGJKIVZPbpN1Hts2AXvZaP/LH0KZe9H
	 W4oTPdrDVRXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CFEED626
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728883357.7719.13504816396736109857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06412ad3f1d46db4d690cc62156e9d8cd354baa64287597889611acb29815c6
Date: Thu, 01 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767288833
