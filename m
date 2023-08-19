Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5351646B9
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 11:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC8FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 11:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692443648;
	bh=V8ZAubdS56TnF+whO/+Qa7oycpWJDOPzhqd90f3DuzI=;
	h=To:Subject:From:Date:From;
	b=M4WjekhC8ov7Zb6JsGw7/Mt2RqkzBwtIjEvh22C9sv8MQic4parmYK8uATamwyVNq
	 XLzhVmkct+tWK4CYoMOHpQFcMHgm8UqMBiNcBYOpa5TSQ8Y0JHJlg/7s44Sw457Lz1
	 uhA/K5IgGOXB/nH0SMisN/1cjb2Zi2JN1WVKpnx2yMXhfjxFN/UCSqUh9tMBSXeNzu
	 n0tnBRS164Ne4J9Ji013IHKaPKky7/oqbZehQsM1bwIesfdRjdN5tfOTrXGuQefBTn
	 AmmdZ/zexlRcumOfdAz/3pyg/tHJfhPwbYGq3A8wJ7UI0iDDJXWXmzsKGoD3bSFFhz
	 Ny76JkHINEycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF481EE4993
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 11:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169244364868.15202.13029195304037858008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b33071116a26643657a1d472d6e277a6a46cddeb2fe813c1db3353702dea0d
Date: Sat, 19 Aug 2023 11:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692443648
