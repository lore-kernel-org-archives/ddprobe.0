Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3341FC0ED
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738774554; cv=none; b=iHSD67ixKOB9eu3Bs9XuXU+TzhMM/w/2Ct6KDNZxrWJKydDRlE/4+D2mY11QtR6zCWZUo5MMYCj0X2pwZ8x91defiH0uhoEpttlhLnu0sHnDu8Z6EEzlAbbXowHCvQWBBNZrkdC3jawTDM3QJSPYxL6wLUJHLm+sf0IsMvnl7Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738774554; c=relaxed/simple;
	bh=ErCQD/hIHogdPEbXF3+li7x8Bh8Qmo5JL0HCx5NPsZI=;
	h=To:Subject:From:Message-Id:Date; b=MM8Syu6qFwk9qybP7mqzlfiufSVbZHkyTnvNrQbfdMn3oySs2CnomT/kEzwr2+pdmIGwICCbKd40lSFfYedpqib+kcRmdib1tAYhkwO1s/RLno1QlVKKji7ksRG/Hz/Wkf2dfHKa0ajGmS3JLBe5IDGWnpFUR4aQ4TeLvepAvik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGbJQRHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGbJQRHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2060C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738774553;
	bh=ErCQD/hIHogdPEbXF3+li7x8Bh8Qmo5JL0HCx5NPsZI=;
	h=To:Subject:From:Date:From;
	b=qGbJQRHN62kmTtyf2mVlOQxA0eBXyqQb9MjIlZEEaGJ4rKv3ELWcCH7n/CGoQk5LZ
	 AVTzDaV/ZX6lhBoF+k+Ah+2n7+K73bRzdyfug/GwIz9/4ooLL8ExEbJwfyFtUR/6TQ
	 7dvFYqkJs5yuEvCnS+JTkPn4RTt003+sA/1bXfBGhwFKh2HSBNPrUI4atO1anJeDkY
	 Zi9ISvP3WbTowBiN0Xfxh3L6wy9n7PzKj7o6Y0hnELJ90FPb2D1xqSgQW3m9BajUsE
	 Gc7Nl9DcpUPHK6efCppSzknItGjWpTOAEDITf2bBf7PPEO5gW52ddDDnkisZ4PJRQv
	 7svLFnsdG1FFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93588C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877455359.14956.6739657856780448375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72fc25d3b2a1cb28c315c0616c58fc877fb7bd68a111252efdf8d7840b1de6a
Date: Wed, 05 Feb 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738774553
