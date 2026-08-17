Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA1A3AAF53
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787004634; cv=none; b=mtJBwpelwZVAeAmECjLxi0yMCaXSAgiqTCXGO3ccJcp47aDbEGkyADyLx4rRNNxMPLwg/w0jEVP4qNwrMhIvtyFVgabsW1lV35ozfjz6tNjt+6pwLkCy63eIK1SLez/Iswi5c/hsYZkeMnHtCAapenB5OngIguXOAzlu6X57BCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787004634; c=relaxed/simple;
	bh=HFxKKxmWhHfGB5/OCtk6bTDhuFwiHIhNYFIMLmbgmDQ=;
	h=To:Subject:From:Message-Id:Date; b=FEBw5ApJ2Kav9S9RvX/yslMYSCF7pDKTvllSlcvweGaW+ilfgMWl0fF/VxBpA7JgL9Z5i2L4J2Y0zaUYCU8jN2n2oQF2QcH/SOZ/78tD5uf7L6w8yuoGUQN3Di2ybwk2gMwK2CvLTn6PpAnIu+qZJKFz6dQCszHyLpTnVWJYGSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8/Ba5/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8/Ba5/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E480AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787004633;
	bh=HFxKKxmWhHfGB5/OCtk6bTDhuFwiHIhNYFIMLmbgmDQ=;
	h=To:Subject:From:Date:From;
	b=G8/Ba5/iTPFTmFI44+De8UMb/+Ll/wgNF0U28Yw/fRuZYUw7H7NTx+9+mJTTkGjWE
	 Dd9V4gRDArzhfNOUqU3lKi866GkRW1k1Q+e+AoEY80Bpqmi7XHEbrcyv+IEMbOvmyH
	 ZRrQ4XFNBO+dJD68vullIb4lTG6gM5g6Bh1GMIfUQM5Ps+m294DlBprDAcfgBaNees
	 LhmKQP1EvG96IbG4ER5fIHLHZkroAju5+AIcjwD4lRKf7gGOsthrWx7sdmd36MHmN7
	 hVlniUwpOR62FrZw6VdOpF+q+XX0lJ/ISoMkKU6eHZpgO1HHrpcV3Fnv9k2xK5L25a
	 MY2Jw8PuXy4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0413C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700463373.11720.3499457727878822470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fedaf9126ecbaba03e7eafceea68149a019c39e1f87426cbe7487b6ade371a
Date: Mon, 17 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787004633
