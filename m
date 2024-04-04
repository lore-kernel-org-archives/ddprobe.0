Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06116128375
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712237897; cv=none; b=NBnHOjd00UMT4pxMg/oDHF+5FQbgWJtbkvgM8lzxUOBuByGGCCYaL6Ox4Oi2Xi9ar3hS+eLV8mvULSEoOm/Kroq5SHXgnXgDOpNvvYxSiCQIhOIgWXAVsnt2myO4QYJL3eSllZSuxTwbAt8vGVJ87q/5piTMEddthfQ5dYLjkgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712237897; c=relaxed/simple;
	bh=SAVM9iyAv7DfkGMIRXnyP4uk96goXhIcaEHjCoREJyY=;
	h=To:Subject:From:Message-Id:Date; b=NZIQyj2zfP0B7+6oFvPwxrj3uyRBFbui3OM1EBEhiN1ERPtxws4f+71CkjQ7FLn/fYDxHKTvsv9q9Ptkxu3ylHk+Jx0KP1mtvvvpB9PkXu++eXe5s9p+2HfuZ133FFVZ1O80iZQ6fkcERlyPu3uBfRNOykeCj1FjtUpuPZJzWYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlqtqWfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlqtqWfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A41FC433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712237896;
	bh=SAVM9iyAv7DfkGMIRXnyP4uk96goXhIcaEHjCoREJyY=;
	h=To:Subject:From:Date:From;
	b=LlqtqWfwOO+Gnwdlg80iylUobxp5nMZ0KKlQq3TbijHFGo1Gie6Wnb/+jiHMTKUSY
	 dvioy2r8Q/iHlLp2wlbq0g7x6etLSIfyQDsFBoLnxs//LqXFiV9ySudCNbiMfesYrW
	 IQPEv4FpK2oJHSxLymgpF8L8dQcqBWnfeDZh1nXleqDx+ri1LRd738Dr562kj0vfqY
	 xWhRpV/QkMwrXqK1FmeUViY0Zil8HpCeEkaAyLU2EcPCrqMP6gW0Ql+/1/Lck8oaEc
	 wxpYaIH5Akhsm78skQNexzwb3ygw2Qw6SAtjD92yY6LOH4FInifIUYKiUcnKRx0F1r
	 sLDx6AuV9ND5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679BACD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171223789641.5845.4054320619072486187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b087130aac741fd5df4641281e55e27064e4915380899d6dff0906f971957226
Date: Thu, 04 Apr 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712237896
