Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5EA17E0
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742353194; cv=none; b=foGw7fBDPVFI0h2uOoXlpZC3/lHT5rzQN0Wkjg5x9FWNH5F/ElV6/26ZkvFu4a7/WcEVK0lOVHAPcCHs3e6lqWaO2cKG4lZBsUhY6JycBAewXsOBEGpgxAE5/Xde8ig52xCvhIkucJ9l6fxlEQQr4/G8obHSkPHtj06IdC1//rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742353194; c=relaxed/simple;
	bh=/Q9P96ioHPiru6T/tQ7V+OXjnJtmPDb4K4nBB30LfFQ=;
	h=To:Subject:From:Message-Id:Date; b=dAxFyb6XOvCCMDRKeXcRF2GW6EOR655E3fzhCr/JNYXzhf7pRe83B9QOUhEe+TTeWu14d5uVnYfkQiNowK7ItqFNwfgdb6MaZOWxACVlTiXAxBb7N5JVQWFrAGAqN+RGRUcWK4Xh+Pa8Ns5OyedKr2lH2tuIsszyMZkFbzLjRmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlcxBBsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlcxBBsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE0EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742353193;
	bh=/Q9P96ioHPiru6T/tQ7V+OXjnJtmPDb4K4nBB30LfFQ=;
	h=To:Subject:From:Date:From;
	b=MlcxBBsUAi+OMzzJvXiv4CJ4+wZ3axNJsxiM3ICV3SD/627n8PON0vNIZahVaCZoE
	 L85w/GmEUAgcDgRF+nRvHanuAQW0JCh5Y7aq8pfF0lekmSW7OQUE3KRgNdBMlsDeJE
	 zDnB+m9VpwxIB4VY4Squqc/oG9vQU0WCpeP5PYQZJ9szVPsVNM1DgwBgc9xwNN39m5
	 9l/GbRlaIUs1XNZvc4TWZ2/t/zz3zpf6hCQKu+9plV/xWQ3mxtVNHIcrSe9hU9RAq8
	 95pdBViTLJ0x3AJghi513dtRijnxwKSGv4gIbIXHqSVelAugqgaWWNY1nRzRj9aFxg
	 q6Ro3GqQMzhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76D4C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235319367.4063.9505761114927360445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033bea4e0a5454b8715af01f82b604cbb7524c4ab96cfc49c04d5f9492b6bd26
Date: Wed, 19 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742353193
