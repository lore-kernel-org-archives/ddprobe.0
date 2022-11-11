Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CDF6D22
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78757C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668174654;
	bh=S2ET0l2TutVMK3pzWXL20uExwj/E7MXawzsTb/I8W30=;
	h=To:Subject:From:Date:From;
	b=Z/6I1j+BuHCdXkjweOsw5dWuCzt73K7Xv3WZM6nLpj9wqjv4WZim+xbUn+Gf1NwTe
	 i0JfJNUvIK6kbEYAXavmgIowdV01MBTvdm5r5bYQD6ZeqlY85kw1jCVfENUfPC88Z6
	 cVbNHzvsOUGABgq18igIbEv8X8uAQzrwdtFutyNcrTAFaOf9aXFJqqXaeBqn3okFfg
	 LCumC6ZvAePkIQsv+Yj0ruY2hT2Bgdmkq5/JHsPemGG7to6Z2B3O5Tp+tuT63H2ZOy
	 gWUhg1NNsLQ4m7DUpaxfb0dkWM7UwX+skLR8Y8qm5z5VRPuAkyQGr6RCkQuJ6vHf/H
	 sfDndjLiKEiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8A1C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166817465437.4981.17026679296712806313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b151510b2191c7bf2b59fe8596314e590e6632b507dfdfe3320e41f3818cfc98
Date: Fri, 11 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668174654
