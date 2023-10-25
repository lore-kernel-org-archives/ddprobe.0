Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE50168BD
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bstDW8DY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD76C433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698269296;
	bh=znVU0JYKkVDb54X0W6uvqQdy9+BIChxtNl1p+4QhBc8=;
	h=To:Subject:From:Date:From;
	b=bstDW8DYtWQ1deTDZ5pPSv+z6zlFyg5/mCcolaOyCDNPjpoy5L//zAPJpqqLKa2qR
	 D+lhzVET9nEDsi1CCg6eOzPXMhZfIBzntwzpG9lr3q8OBifd9bHV8dabhCxcWt077t
	 nXzJYnNq+vURYy++UScUgpHctQa+VOoEqsF6420xZx65DHNtKTjfWw4fIN123Gr6l/
	 KUN+iFsy7cDHqctTYQXg12EBgAZcpXnGhDU4AfacA5wXannP3nFRndl4ItLg+s/7TK
	 PfDMxeS26aiSX5TrBz8Pq7KyBKZEgTlbVMab4uj2Z6/SrmFBUbyZyEBTUYPYaNP8R/
	 /1Exnma1TUbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60490C25B6B
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169826929638.14871.14076102429308838423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbe419f1cd968cc0d36cafa421c2726695ee0f77d23d54382dd69786abc4e96
Date: Wed, 25 Oct 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698269296
