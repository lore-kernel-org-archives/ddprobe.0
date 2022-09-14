Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04BD4685
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E97C43141
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663193453;
	bh=5QlaflAAiY/O1S+DzPfH8ctKM9uJ5JNKFQJkW+QXpmM=;
	h=To:Subject:From:Date:From;
	b=jVhMPocTrtALphfneBLIHNeudOcBgCB3tBl8B0jGyIbGz7CLxsNhu4VLYgtL/1JY2
	 1M3oiN3vPloi834gJ6/7u6qV6eSnfwbSFFlle0aTwxTOeVyR1jOxdPK6w8zUuXGjaF
	 AHTyEXOK6+7Rzyuoxf71IXeioccBRcVl5vQsbfWhyeZyEIa1U7NhYmDdu00zhR6Hby
	 iTKSXS/e7by8qx7Ga34paRrihWB9K0g8L3jX611iAZEqVJRA+aObL/z0vXDxtUnDiT
	 3ArfwV3/7mN1sYDPt0iPChyR5Nd8jfC4A2qbiGuiQTIUGsv3mnJgSQ2vjfdedghDb1
	 C3BBuF+qFh1Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF40C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166319345334.28999.17669298346743008350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82436b7f951533f7614e5209abce7759657fbdd0c062a402f7aec1f9eb5606bf
Date: Wed, 14 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663193453
