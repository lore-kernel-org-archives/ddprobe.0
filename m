Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAD414D71C
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714728743; cv=none; b=ac5WBBdLaHefNhksk7vSmj2nwc9cTSc3PSB7J9qEk6RqGBJ7MwsaVzZRX+D7WV+lOiI/ia2Y4CIZkmpFXVmlyU+svJ1M2tc+xuHBBL6V1yu+ZeXBKQPXL5P4h0rHGOC/g+gJ3zTFEJIskpSmkukYCKiNcnRw83iAX7xODHlUofY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714728743; c=relaxed/simple;
	bh=/O+YPrxmvU3Ezg5VNkl5HghPw6kOU57DBBrJbm/cRFs=;
	h=To:Subject:From:Message-Id:Date; b=AS1WOF1DgeDc7BiUsWMOQ8Kf93FGMmF9PISVdbrQQw6rrrI2UpFHFi3Vcgdhlmr+s8g1z/fqGd9IeftrrdfmhjJnTq1OHGUcp28WBpD5vUacWLQVLCb+HKrueWBnHgEDp4H+B5stcQgxXUgvakAcZ4SJpVEMGySpnJbUyg7pHC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIjOStYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIjOStYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5444C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714728742;
	bh=/O+YPrxmvU3Ezg5VNkl5HghPw6kOU57DBBrJbm/cRFs=;
	h=To:Subject:From:Date:From;
	b=nIjOStYSEOMiCJgsoR+pJ6d8jO06lToqTwHWaWOrH6rV+SAtmxlMM+0zV9aFW5MOr
	 bNLfuvuLf7uaFXjMlwUijJi2Sf5gDYQEzmQuxVQL/3ExqaU8TLYJlJSj1G9U38VX23
	 dxXi/Sk0FkkXhGtov53/AJ0z83pKqN0FSiGAb+4HEy3w6x/944hx5HIbdrCYG409xi
	 t8SXxBtqdKNXR2JDZvG5pR6gILk77B74VqxYJd85/VEnrtZfSRsZv/e/JP0k0Bo3wt
	 pOTvenFAx9KbIvC9N74mbBhKeamJpTfqc/QH7yGBdE9G74DuU3Oa2faU5xInS/VKhb
	 ROz4hguwCGf+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F5EC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472874281.28171.14330584542301926378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705e668b1efe44b04882ea675d3adc10ea384e50c74f2f2743b4b049f21b48e9
Date: Fri, 03 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714728742
