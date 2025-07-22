Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10225323D
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753144194; cv=none; b=aIApDKuKP0Qk8XHUH+vg6KAgIg4bbwbURXmELFsXdjSl8tE3FSxsb3Ym6O/kJ8LuJmp+vnXLAe473yXj+Sum6dHHqRonmC52S4+U3DDztgD2xwbWKHG+6QbwgiWBt216UXen0HE48lTJTVZCVCewExc0/G+mGTmSKTXlf5jV25U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753144194; c=relaxed/simple;
	bh=XTvBLGDiYj3KAI1mV6+P+xKCWmHcaEO/dZ3RU4hOisY=;
	h=To:Subject:From:Message-Id:Date; b=MpWKW8duDRaBqLVVUj1D0FZQxYwz2/GIJ6kS1NWWlES867p6/HGVUO7tS3qFTmDUMSAJsYY+ztyIECORIU5h1w6ZrBrLmDtECyraM1x/8CQ3V/OUWvjpr8xvQytlZHxgSGqyMCA11MYfgkLTHVRUSwCF1HnsMnkMJVQh/Dkny/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYNAUoWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYNAUoWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0302C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753144193;
	bh=XTvBLGDiYj3KAI1mV6+P+xKCWmHcaEO/dZ3RU4hOisY=;
	h=To:Subject:From:Date:From;
	b=iYNAUoWhZx2phQ1zEje2JOxIHCtyu/ssk4zk5PdgWcxy1AgPC7IrdmlF86f/+tqoM
	 QXB2YBKosHv4QguJjjubTdjQMiZcxorifjxyN9nnN52vIUV9CdNQhOtOSfohduNFD3
	 qQLUinusENuUr2wa9azWkfhYqv+akAAU+nuSW/8IneKNhwEuB5N7t1eT8X2EoQJfzG
	 CGpBm8Co/VuJZcpoB+vED80tFcpYRcC1sTDWb9n5Je+XlXffgPlqUQhrFkPYEY0ieY
	 qg5KXaUxQOB9b9BBSvIhpxvAe2HdWLVERpeJVCfvhrN//PS3rcL/1MGZ6P0n4WfBbX
	 GDH/ngNvQ51pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC67C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314419358.6553.8328096468041751709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9ec0721504341cbde49cc459a15248ae897a0f2a773b6609756f41db82cbcc
Date: Tue, 22 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753144193
