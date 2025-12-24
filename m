Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3D930DD06
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766589834; cv=none; b=BDxQ1j//FetvTeLrnQoJX9Lj6kFjKyD6P0LlL03ejp4RLnex9bPbba37+S4HmLbx4t0k0W1YyMpVlWpATmKggskYr0oZgXPXi+c7UtcGnLdnMRXPQm4g3wecmp0/OKMthhB2g/8msZqaqIbJhVNXr5k4kGnyQBDT0FE27a+OJGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766589834; c=relaxed/simple;
	bh=YLA0CQdWU0ZCrNfR3JlL2jfEEANNcrMaXJAz2xtnQ8k=;
	h=To:Subject:From:Message-Id:Date; b=KaoIqK65UXdjLORdAm/SJzN9jXfEWS2lYWfZXHooZVsKeLgDJ3hTHQ+fhZ+BOFk14BMtPAiCFB9384mUq/Y2vsLwcR4P7XRyHuz+DC5EpsiuGuY+vnbykup4QlozB9GG4awZZiezP3Q0TkpvQcY0QIv2CESxHSSo76AfwaPdnJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3QbUygS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3QbUygS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8F8C19421
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766589833;
	bh=YLA0CQdWU0ZCrNfR3JlL2jfEEANNcrMaXJAz2xtnQ8k=;
	h=To:Subject:From:Date:From;
	b=P3QbUygStjExcu6FgzV9SqyFGK6EgTYiQb50GnQeQkq8HcIVI9XS/zC17bD3EKv2l
	 oDyHlE1cOu1Y9nfTNh8GMdokNCHT+diEa/RHbhU9bR5tz9Pa3bHRud6/oyDcHPtGh8
	 yzQvc9l3C8x9tBZrOhYX9cH6X5ATQC6bfwK3HXxoWXryeICiAALmrMTnUoQl9vAAd1
	 uaL+Qn3rR1o3dtYSQb2RxHE1cpEi8EdSVwthUhcf1rqsqUEyI5lqV5AdmwqZkmRJEM
	 RG15pccMLLQyOdH3WMp8oSEKOppBrAU4oeedwyiQoe3XzJ6eZWIEWTcIMcqJwSLMWU
	 GNc+REdwRYn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5BE7545C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658983358.19916.17864901592791891418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cbcc5377bbc73cb29e532a1e3e5daa1be7a61f52ed6b857616beaad90d7383
Date: Wed, 24 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766589833
