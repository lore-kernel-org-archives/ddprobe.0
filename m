Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1159925FA10
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762996794; cv=none; b=ayk1cOk1hpVVvs82T1r1DF95wkW4uK7/xoNNXDAw08emA7QAuUO2QwszMDDtl2Z9cisoMDkd/Yox/EhIs4qEKdYT58ydpOrpUPHcgnyXxr3czfH93NwTUgftWgkX3QCgmAK3uWVLw4TMdDFpHsATf7HNHfLXP+0EqO2jtNGXpWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762996794; c=relaxed/simple;
	bh=ujcVfD5SAI16k9u8/MfS3x3zpZro8AfKvxp9U58Nf4g=;
	h=To:Subject:From:Message-Id:Date; b=aLqiU+NKdQF40Q9Kc/iAOVHnRT2W0cO2Fg6tC9KAoQtLt0mba0CYoSnC9jbXhW58Zd+umbiCwyNp7WSUAUm8gc0wbK5CLdyNW1/BpzT/1S+oyn7TjZZuJ0m4qpW8ki3O3bOdg1yYukDsAlETrvycEDnovNJQqpyiMBda9Eu1dGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tn/Tp1ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tn/Tp1ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C66C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762996793;
	bh=ujcVfD5SAI16k9u8/MfS3x3zpZro8AfKvxp9U58Nf4g=;
	h=To:Subject:From:Date:From;
	b=tn/Tp1ZIEsvnTBLs0l1wF8tolh1lv3PcCYSJj1F9TxGu0iHw6AOvz/D3bNfAxVKRC
	 PZCKoinc/0Q21muld+gK3pn5xf69Y2FSqgHDQe9IpOvVYlRZnM5aU4p6+Tfy6vnXDu
	 OyZPdclptj9CdBV5dx/5VOjgL88zBNr8Ofs8iwDLTkmME30OiIftLMEbgr9Pr2goVS
	 J0FvJVDkMqqLNdOrO05XZial0W2BuaENniw8z9O0rm5woMLVk5MElkH6WbvQaMRRqh
	 SSaMTHIzsUIie1zDA7TyZ5g4vwbP6CHJ2Uxp53/LjMpYtvhgExtn4TiqN54T/O8E9b
	 UmLlSWc9EIVFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E89CD4F30
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299679358.13895.14532095743393784342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3a2458dbc2167d62c7d5bfb1315c76a7a98323742c2f1e9b784f85afb1957f
Date: Thu, 13 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762996793
