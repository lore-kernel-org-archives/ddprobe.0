Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493DA1103
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660591252;
	h=To:Subject:From:Message-Id:Date;
	bh=9AEGiGck3KEtizYeh53Y9ZbFLie2ZoUC7pkpcZdUKHs=;
	b=NBJrtHtfVRgM2uo7uSY8TQGyc9AUyHhfJ1sp+NZA12DVuCIhnGMDzWi/kuA2PUX+
	iCwdNIp0w4Rx5n87JH//tlT7td89YpUf1wXSp0fb/uaVmCktisNEWZ57WNtPYv26ojX
	V3APrkXf0vyAH3BTlhSLS68W8LuFGHMTVw3o8q/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660591252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9AEGiGck3KEtizYeh53Y9ZbFLie2ZoUC7pkpcZdUKHs=;
	b=jtjIVLUDF16/BZWbRh7R0xSeSCdxcmpJWqyp0pw/RNR49AKSPObWupgSaMBCzrJY
	tLSCkflwTV96bHqD/Nv/J5wzwMXalthjPPZzQydl6/NScdgx3ombY++W5HjEPJkLSV3
	Wj7eAci3zcia1M7ysw68IqiOpzIqrrenSroIYqwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2f3a456-720b0544-8d0b-4526-b020-51b92cdea69d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fcaeecd269ed4854a770761129cfdc3c231e7279ccd7c80ed6d894bc5be2179
Date: Mon, 15 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660591252
