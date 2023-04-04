Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524CC7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 01:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00D9DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 01:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680571626;
	bh=CvGsS/KBbUZXEsUCy7kWMXJsHmNhbppy1TTEHoc3ZIU=;
	h=To:Subject:From:Date:From;
	b=nBvKao1S8mQK53Z3Tcnrax8KaoQg3eRf6/KoCo1tOi4udLOeHZ3U0wrZ656QNx1+Z
	 ld45Vwplh0QavECngbFmp1/vuxb9FP3kwL/M/J1+YlM0Vn5fWxqaWgoj8p5KoirQCo
	 Jc5NOH+iiV45gi9+K9Kh8kTMs/ft1NidgfeOrxZFOMzVrN0rNklvIsZmEKFsvIBv/E
	 5kFaNM07A9KwVkD15lc/Ix7do9213LQirKKsEOWBmDq/xK0OpEySBZDQIndzd+U/EB
	 65sHsENOOZ0yXYziY9G3dfqVIRsGOixCAvhpMfEJodtnc7KT8o2Lyo446GQETkfnvH
	 OfrvneIuvNrYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55B7C76196
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 01:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168057162585.18803.1992697327450107619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f775e98056a571ffec5758a701b209d2531062ca639ce8720b498f34987e315
Date: Tue, 04 Apr 2023 01:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680571625
