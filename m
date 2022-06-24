Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A37323B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656053812;
	h=To:Subject:From:Message-Id:Date;
	bh=vqVzwR+/TLPk1mqoqJlNW1W6bcgG/Wlh31MgacfqJ9c=;
	b=Izmgf6yVM8Zv5+tr3pWfD/NwwW1IFMblyLnE0Ev0sBRScF5uqqmN0k7xo+62JEA2
	+HMESFMzvQvs/fZ3J/PISb4tgvjyBqdvMbF3rtFQhWzGcld/XhomAiksDkIc2+7emrT
	Nphj/T+TkXSs7DvL+Oq0o2SGSWmC6q5lHd+/etOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656053812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vqVzwR+/TLPk1mqoqJlNW1W6bcgG/Wlh31MgacfqJ9c=;
	b=Rbi09QoKVclhVwlzM2NVGtLCq8HJ8/m+TZE/yvfXHsfviLy2zfuCiuTSdql4WgLn
	nHhcfblu8KYGgoQT2shZWkSeMFh2WDiE+wLUY4INJgmtIvZ/P0mjyd+013haBuNThiI
	XEBOnceMjzoBLE4HP6GjjEtHRa23zpNg9BWUcfYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181947fcc41-6ba396b3-7ccc-4c43-a45f-d2fa8f9847fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d4f1c45a138ccd7db1a825fb568a8e3ae9d2ee286e9e9713a2389f07fbaaf92
Date: Fri, 24 Jun 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656053812
