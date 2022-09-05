Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3902561
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7184EC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662389453;
	bh=UxTS4G648NWdtBhLWBWz0594lYmhP5sCz3u//Bci/vI=;
	h=To:Subject:From:Date:From;
	b=nCp5rXnpV2R+Y6QRfLSmnqkIN5k28SeWbAMuvSVGlb+huSVU76jXW2Wov353jdLA6
	 uF1UluNWOfhJiuabTUZKERXYFPTYIU2MD1eY9kdFlnvwGoonzpIDQZl9nMrd0qGmWE
	 Hzl1efuOIN8Es07+OHPhQJkXKR+wdYBM3mBqe91PAsRzJLPLuoYErKbuFJFm7f5krQ
	 l/YOsFL75ZK417wBGyo88YQuEkpQhkbC8zp4Ak6CWOCKK89LRbVprWDRcIRKAHM92g
	 vIWvpeSBMc3nL1EgT9StEcUsvAFDSrOjsd2t9sLhvo4jEyAc/sWVpiBDAqkv4Q1c33
	 VeygTAFIUA0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5976DECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166238945333.12229.18098908481794855341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9a960c19642258cd616068fd3865fa8af631785113e276974038095f0fb0f0
Date: Mon, 05 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662389453
