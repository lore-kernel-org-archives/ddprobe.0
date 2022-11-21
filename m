Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95EC83D79
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A0D7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669036254;
	bh=Sb+UL8LG6s1bm7FbH+PuD7FJ8+Vn18XoA0VYM9rKjOY=;
	h=To:Subject:From:Date:From;
	b=BPK6rxVxvBvpDhnEfbw4Vkc/1MPrRFB+eTf0R4G+rUjSdvisA+/37nHjkpXy7F4/z
	 jqq0ec2HSYvG5Q9iiRzTrWZ+PpWOnJEBHRPjoane3E7zd4cP3+BQ/mCU8qGXTu+6Kp
	 0Tm6Rf3Lq0Cbzbb7tM7WkveIfk3Q9ub6K4AaMawSaIccnfdfG2vsOhSAoi8SrPm1IR
	 9dmkQcHIw4JsInGyEf2s/YBFHesTF81Fy1L3n5r7kigurYIhQhQIvMsdM11pWIRVTx
	 cebnXX0pEyCLvseR/DeMYBFDk068wFPwMrcB6p6m64maeGPLiOgTUtn5TBjqqTyYWB
	 rR27ASh3My2PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DF5C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903625433.24413.11273956929730785813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e848dbb353629c6bfc07568e7d32b46db2139dcdb538c9f387db335f556802a
Date: Mon, 21 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669036254
