Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C761A683B
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774644894; cv=none; b=Rk5U71lDpmB/5/M5lHm4+s+D+a0usIuB1KPi41vJTUed8fFki4sjwk6QFlVn0P+D7aH6V83xETkhyeae2rKdHoUVLOoNwLC7XPGJ2hK7cTqjtj5WKiApM9vpRbYutmrD/nqbErOfATwkYwIwnjGyuHa3erAiwqW1pOqgPqg5gvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774644894; c=relaxed/simple;
	bh=tGnYlOEsQFjx7JR3n5snXZrStRygCSbqw79h8ImnYpo=;
	h=To:Subject:From:Message-Id:Date; b=c5Djt1YWqntmNLUIVXbitpRzaHzw4nPZp3Gs6AxOzeA0adEldrI0YOrT4R3H5XcCaQYl0IUs7lPmkbTAoCdJIwJX1ehdxI4OFUEMuEMf31C2CYTteTty6uyhf+1B/VI8s9GG3R1A+OX8TqnHA/GYGFvXJULEUYumZic1iSZnUC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWXRo6e1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWXRo6e1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B551CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774644893;
	bh=tGnYlOEsQFjx7JR3n5snXZrStRygCSbqw79h8ImnYpo=;
	h=To:Subject:From:Date:From;
	b=cWXRo6e1m/nmrhBAxVr0GuasnORVmF36h6c8LbjosxLtasYlES0KPCuCUXj/TA3es
	 THCrQEpUprO0wkH1yY3xW99T0RzYNkFzVsqPnTU+64EPpQHOw8ZOFZC5trXJDM1bn2
	 61h/y4/lMty5PMybaQsPk2h2LoAgY3gE55RIJfFBAWPAzsjYCba33US1wKTDW1aQcG
	 oMk+z38mVL0M4TSV3uuc81Ke7uTNucFZ3GmK8pI6yJvyOqebDE0XtGWOoyDpLlcrE3
	 JjWx3wQkm9RVOjPji9lFnLMICEpE/h3FnpycU2CR8U9RqsIK4YjznN0QrzxSaCxeQh
	 o7FKFMA7XEEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973E410F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464489360.11586.18082941595574930874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4382a23815fa421e8ce3e0b8da5a21102f05061824cdaecdafa8e7f6a8e2069
Date: Fri, 27 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774644893
