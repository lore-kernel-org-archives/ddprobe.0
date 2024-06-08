Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680761CFB5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717886243; cv=none; b=dRq3KA6kXsO4hRYoUXkQMetddiM5ZddmRTKYhcuNYBl2usq2e7rb4vNdEZJWPw1/j9CHlzeLCJEiUGZgkAZXzrT9GSYPy5aa8GJ7UbVZLRp5fHn9sp1MN67x2mo3gG9mJApZpLmKrIbj4h2ZnC6f57MY1LBroQEqH2niRsTsejw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717886243; c=relaxed/simple;
	bh=M2sGWT1vmk3ZdCBYH7T3ZFZv2ELOV8izKNwLuOsaDK4=;
	h=To:Subject:From:Message-Id:Date; b=czsaQ+FDtjE8eRTu4nxEJI7D/SAhezDpim+gMRJPjKZ/d3JgjMn1CE8zrEuiWXsV2DKzUFGhsI0m6dsNTV3cfEP4lGvbq21eOCHTvWsqtmBgMwy1e2wA6wENfRwWG42/el0qSKGc3GzxrnHnfUP+UXWEwRzghpaOhwtetlE2nlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0EJ9Xc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0EJ9Xc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E534CC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717886242;
	bh=M2sGWT1vmk3ZdCBYH7T3ZFZv2ELOV8izKNwLuOsaDK4=;
	h=To:Subject:From:Date:From;
	b=F0EJ9Xc6XlJBB6n8GujLECrOdPPmYVvYu4t5qhF7JS2gUCUSDi1YBjkn7h/cE+qAX
	 YN77E70pqBHtqUxh2I/20auKm+QMX1BmY4689kQHdaWJ97WoeFkpp/RIznnkpeXEGA
	 19XvyZDaxebqtW+RQMfH70qT7hipIjFed6/Y1slhI65eEm/psZoQyPiWn/UNDnnBnm
	 Zi8GbNx5nsDFnU6OX8Pb6AZTD+LKRSqHYu0qiMcYMBHL8xpHb31Xemm5VkWGP1ywTa
	 F+5sJKyjxRdKoDDYm/zPjE8i2gAqCZ75wGk4hgtoZyFZSm6dYz5+1fdd6l/d/HEJru
	 UyUGQkCZ6zm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5B1C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788624276.25803.4598405852572414697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab420bf0b1067e8555f11670f16e24075de635a1e901c5ea1867312154e566d1
Date: Sat, 08 Jun 2024 22:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717886242
