Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3644178372
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757570995; cv=none; b=Uv1jMNouSO+ua0JkCmbyRMU1KZSB2F2IDUlf1XFUM4A6h5KWv1SI7HPIlMCvp8xM7aF6S9ej3MT6vKg3zDm+DiWW3KcnheqS8e1qDZOBt1U1d5czTT7yyz/5gR7hXGI3csbVT0D3S+sTnM5kN+b9PoiTaH3IllwYc9k2Xvl/1U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757570995; c=relaxed/simple;
	bh=NHxZo3+11dvS6FwyA1Pb1nu0l0N4rYNlyL3E1nn02AM=;
	h=To:Subject:From:Message-Id:Date; b=bpZ3RmLR6+JJrdOtZPe92YWPFntGGqWjtPGHa+LpVpCCxCaSFye2mLqvEHnxZm27Jmu9Yf28+0/gjhwWxAg1VAfbk/M0XHEuxgF5WZmy9ceulKmZ4a39tb7b3A39OW3wkdrbiAUsZSifIDEVg9sMuUPYCkvewpQsSpjGR7+ZB30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYBnpmgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYBnpmgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E848C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757570993;
	bh=NHxZo3+11dvS6FwyA1Pb1nu0l0N4rYNlyL3E1nn02AM=;
	h=To:Subject:From:Date:From;
	b=WYBnpmgTJrBl72Dd2R7PCXcmAfiluEJHUXf6ZhPFIuzP5IpvExLCo9hQb9wCiJLLC
	 GAeeAYyaVYo7Tz5eGSAyJpyMhgwN2781Kg4WVzKWdjsAFM2VUSw2ScnXIkckk+QW2U
	 VGx4VrDvys3M368AUm/BquCzOQTlZSnPBoeHBH3L0nW8dLnyiln2dOO+jnKS0eeitf
	 rIEEZwOJPtRwpWBs8bXhEEEJfhvGk/WKYwzHipQj3Qhfp6trJVyw8HBs2ydmw78o5g
	 Ui26PbUWeC/nKWEIHL6I14JksfDKKLO9d/u7mNQ7Qs4hdgjzEJ9ps0kFCTiKX4wjJq
	 jrFTANyyHrJsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B0CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757099357.19022.15601394282148134310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2333607ccca588bf0839f4fa12ddcfa630a168613025c36086aba483bd0b8d18
Date: Thu, 11 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757570993
