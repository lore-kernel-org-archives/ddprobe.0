Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C6D31B812
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761598794; cv=none; b=o9UwHLadAnaWGkrup/CJM08m7+pOGEBSXi6KKvPUIoAQoVuY52X//X2qMY7cUQmoB+ThbFpr8Gih92mXKfihhOiEvY6JTuIpnK61wl+QZEvsiXnfqmTpOSXnZkgZws/Ymi1OdFyiS8uiEySDbEcGD43QDn+He5o+cYnEVWDeFTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761598794; c=relaxed/simple;
	bh=/hBSk4SOC/ZRx6rBKj2IsEM2OdC83PnIgl/HrHNXTfo=;
	h=To:Subject:From:Message-Id:Date; b=JqgZjcxiN0PXEMULYtFr2C1/kgWjful2bHZT/NqZK0KN01KfMflhVd3OFvENHJoHpr0VGWW/CDfulGb9OioMseDyG1lBi3/qIbibtX8pEn4I1fO45yEujd8uITYC7HXFwWbdWcnYg5yDnC+48snVBOVmH85w2yoHWVYeOhqzqcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSVf/n8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSVf/n8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1473C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761598793;
	bh=/hBSk4SOC/ZRx6rBKj2IsEM2OdC83PnIgl/HrHNXTfo=;
	h=To:Subject:From:Date:From;
	b=cSVf/n8GF4pbZFYsYIo9C9Noy9p3HalMidSV8G5X0Exxgc0+k2X+MvCqtAjFOt44a
	 C8gAfyzh9r4p2hmnqRIq8ihTy6jchLG8qXCKcaGwnqpzi6NxCbC6YVhJ41UqJdRPYx
	 cTX1mVnJ1w3fJTinbtf6j2r9qD8yDgfaQ/Chk+bmK6g7dh9znU3KXHgG+7+U4ioEM3
	 NsLNfqow7Qe+AwzS3Inp2jM17VcAq8ASfWmNhtqVcfhlriQoDf54xSk18xhZb1ksP0
	 7BcAKwWgkogwWplZVWEipAXRBY0dbKqip08WRE/n1yfIfWT7oxPhOFAPHBYOlCC1DP
	 wCTFfn4HvY/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90530CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159879358.15007.4248535328703054997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912312117694ee8731df61b12d673a91b52354b6eabd929773a01ae8402be62f
Date: Mon, 27 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761598793
