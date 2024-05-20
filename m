Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F36137C25
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716241943; cv=none; b=pusrQ0RhzlFLWGXlVnSYg40+J8vZL4ce55lyJDct9/h+FeanWmZdkqwnTqwSMznbJ7XfYzO1HM9EcQrQa8PUZszhwMiSd++PAU11LQy2G1SZcM02ap1b1TGlJo9ZrK1lBSuCRP6OghQjKIakjjvH7cNiDrCg0zB74gYZeWvkv14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716241943; c=relaxed/simple;
	bh=M0q2ADaRt6KGljVcn40Ry/cE3ANvw1uGIlJ9NtPNyHk=;
	h=To:Subject:From:Message-Id:Date; b=Bf5uJ8Ygnbr6gvMbPtiJSCOecA0YDb3lvDI3XUH2l+0ibVv1+mu9Ih6nC0m/vZd2RI2hgdr3k3cL+F3R0EorMPeUeaW9UG5zXtX3LZVomejolZdRLq9PlBJAoa3L1Ng2rSbm2xH8/QtDfseIY6ViOK0OYrQSKV986/P61zWaq58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxsLEqfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxsLEqfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0992C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716241943;
	bh=M0q2ADaRt6KGljVcn40Ry/cE3ANvw1uGIlJ9NtPNyHk=;
	h=To:Subject:From:Date:From;
	b=MxsLEqfTeTt/CV0+8k/6CaMT5qQeeWPvkN7oG3Ksxz8aNnSAmuxRV3JbgNHcvUHWj
	 muldCGxpEbul4fiqNOin/rdBQ1yx4mAgzDJtxmPKBBnoch8PX9E+3TeOsKhkyIGeKj
	 t7/kwQJyUDeQm6GmZ1KmycRK0zRRQAflFSDhy4lYgYLfDuuVGHEFsqSiQrsUlUsIz3
	 T/Tkcl7omnByUFYXewTE5qjWid1e3CJFQe80OW8UnXXAzYE2CsZFC+eYxEWUGjzklz
	 tcrwBzpXWmHQDgYSOQtCfRpmVNX/MAYPHwfI/Ypx1axVL5YlpIylwz7TCTqFRITL2e
	 tw1TL8D+D0lCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA585C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624194283.17660.11282450701806217884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483eca224a49c856c7355b24c119a7e68c597eff4e126265463b86b12f573279
Date: Mon, 20 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716241942
