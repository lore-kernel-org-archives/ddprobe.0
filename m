Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229BB2ED84A
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776549454; cv=none; b=GRdVjAab5pOFwdTvx7CcnBvV5eHCHiZa6/PuIARap49rRGnFcNSLbpc0yc8OhsXbPaKZQeu6+ZQkauJh89GWfN9C+rAZMxFYPEZWW0+n1KrB+67qa8bkWBcbdc5OLO+/wcI9IhO7V87q/I9gtZRvNwUh1u0EIuq2B9enVynnr5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776549454; c=relaxed/simple;
	bh=hs8yf+px90FQ4DgIaPA7b/c+eMqqPGp8q/PhxO1x/0s=;
	h=To:Subject:From:Message-Id:Date; b=FOU8lOZiu4ixycp+mCwNdOxGlTrSEITXOvRU4Cip5IT8aYUH/A4nGnzH4rtkYkZWBNyZHGGk35kLbp/Xks9zaL1uccF8Pkyn2ApFIFNTe0PS+0grHIe1zCRMQ16OqKzlp9kuFNG/T9q0UX3e8KPvm+XAKrEJrcCnGTSvsj5Txmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DscFHNeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DscFHNeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE7BC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776549453;
	bh=hs8yf+px90FQ4DgIaPA7b/c+eMqqPGp8q/PhxO1x/0s=;
	h=To:Subject:From:Date:From;
	b=DscFHNeq09mqn4IKQtYOhRuYLWb9mbH7P7JKV6v5HFQ1iB+D3xCo5hkSYPIxzyEFr
	 zNejRms8Zn42rVXbvGq0RDAb1nizGKymt6//mlhzUmY7nrS8hL1bP7+7b3BOdjZuPb
	 jKEtvPYuSOiI/hhpnDsxyWedZYGGKFjf4EhYL1r/VrEO6Uyi9zKJU4gOTlIvDzdfaH
	 LfPU30QmKkyVHGUm+iJpOoVqbu0O7Gs3MkcyvuKEf+zMJTPIiCLZbhbcBP/M8oPwjB
	 M63UmCEw3ngBw2MaD2xU5NrNBH0C4/OEEnj7Nd0134kpEeec6+7fE8N2McToWcDlFh
	 uU/llFWsLSMGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A0F99C9A
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654945368.21249.9941816534032551905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ab48f38998d0be1242409ec932cd2af851573931b485023135cde6bcb288d1
Date: Sat, 18 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776549453
