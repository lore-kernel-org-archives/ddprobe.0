Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14562226CFD
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756186794; cv=none; b=Obx0HawmnsEii8qqm6WQPpO/HAQ057/zBZsRHb0K9PN9zVTLxLLwG2hKNFgx7GqJk4kvNiV3KPVaFvgRU9D7iLWX/s+XwbSsCMT9XMMRHMJRhylDVht6bFp0ARQICCY5gq/91WnYVt1HWQUHnkC5Pb1CUQ5vgekRWPX67NbfZmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756186794; c=relaxed/simple;
	bh=Cc2RFWgaWVdwE5S6j9lHOzo/f69vDOBtMNnV/ErhxFw=;
	h=To:Subject:From:Message-Id:Date; b=ooPV9KL9ev/vWDz5Sq+3t93B3c2OhgbdcBEHb869Mgj7+KpV+X4BDVHZX3UFzrmWD29JDNHw8xREnf7aomLgs/m83WeMAAb45CVHqRoMIH0j6Qar/y/6RzfklknsmPYDMjYqOnady10SWrUS8C/7K5Zmu578/vm/7wR/0B9jbdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLJpfpUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLJpfpUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F775C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756186793;
	bh=Cc2RFWgaWVdwE5S6j9lHOzo/f69vDOBtMNnV/ErhxFw=;
	h=To:Subject:From:Date:From;
	b=bLJpfpUFP6k3UtaT8QZwZaaU3I8UDAcwWatc2579uUumrZtaHUoKCwdgGgz8KYSnR
	 mB6p5adNLrSfT3e9pj0byu5wwUnWDUWCTK8Jg2lJ4Uua2RDDOvOu0Jfb8z4n/Ei0CN
	 P6uqHGPA0M65cG5CPKF30xXoaBSTD9usWGeg/Y/494MbwWhEcTXZV47JQ9bWICAJUh
	 5R1sT0fN2dqO81783BtmQRPC5O0xklUeHy0s5AOpyiKu9kXHfTaCQcw3uRCCw8lXkD
	 KpotElVBfFdxvT5h7QGEbF5xuhwHLumiQKGvklrbYYpzPmF5p42j1VzcR6j5pDFtss
	 yrra+zFL9tVYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E081CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618679357.15411.5444329843268496444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54387a1503e627a578174d502497e07f5d9127236529d42a001838782383f58b
Date: Tue, 26 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756186793
