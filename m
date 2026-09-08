Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74939531AE0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788893434; cv=none; b=mTRjBlmtbt2orTZkvUY4uHjIz2cuvGFz3/Oz6VvFbwGb50m4ClY8KTnRblghklPdJCiMXh5M9mcnh5HVsLyPgMTUkR4294lUrMLgVDIoaYwXNoi6cFL/x1EQCwL6Z8k1yjbE7K/sLUy/2fXjp+HouH8lkDCHgd8ugsBHXQc5if0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788893434; c=relaxed/simple;
	bh=iqzLLRu7gX0Uapl9kJYgLWgjlttoTRhmGi4gDKG2f1w=;
	h=To:Subject:From:Message-Id:Date; b=VOAY/4bRq59EKVm7HSbBaX1wxLjc3O8+WpVvYc+kMESdWPgBx18JSdqcWp5/RxTVhdoliNttX2w0+RmCP8KoMEOaI98e6VR9Oc3a1mR0zJiEa8SQCa+oBz+8RfAbcb9y7OapSY4/RX1sefCNfMxRJLJrt4Lk3kjJ3324uQ+QaSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4CROrRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4CROrRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13BBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788893433;
	bh=iqzLLRu7gX0Uapl9kJYgLWgjlttoTRhmGi4gDKG2f1w=;
	h=To:Subject:From:Date:From;
	b=u4CROrRuT9trd8pfNmnO8/pAruDzb89Sxh8pGxy/FTmZdEIa0MIjNh27XGFgMJZeN
	 YcnU0Pq6TYehdW1OIfGX0UlugOWdoaaEzItHe5pBupXfBsXlWhXdd1xprWRf/B+Ra+
	 Ab35pz9lUdF18YH3ZXH07oPeWfpV35bi58YkUaSm9R+lNFB9m4IHgNL6miXb5Vg323
	 7XShJ4sITbLGcO5AlgNZKoyi7A8kE4rQoAemS40gGnUWfgitj8rbYYavw0s1oISbR8
	 oaiHUgYoGHTQxZwMXrNNHR321fn1Dp3sFd28QpkTFftaDSZftvrlsaqou4AABPuccI
	 RbUMrWVTuBEYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0FFC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889343373.29158.15321948916412712570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591e75fbface8ba31510dba34c2138f6b10074dcca63fe840701b91c7d712981
Date: Tue, 08 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788893433
