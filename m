Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112257E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658616412;
	h=To:Subject:From:Message-Id:Date;
	bh=56yX2l6UXgbvg1Vn9ByThob+o+HvRysqXwH4P1P1wY4=;
	b=OGcqArc/vfg8ZJnCEChOEieda/k+eLflb1HuefQRxrqsf5nYviEsfFAd/vMqmsxe
	RfJ0b/Vq0rdRrfDl8NI94eD+la/9eSFA9CwA9AKFDrvAsO4wehvKb/Z77sYa2aMTZpR
	swa8oMbIslyCuBBm3843ipREmCuWMenuhjZghsaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658616412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=56yX2l6UXgbvg1Vn9ByThob+o+HvRysqXwH4P1P1wY4=;
	b=joKRg7uSc2BUWcqYP9dSIiqqLhfOb5xhiRUFHStRZ6HkL1KjS2cj6E1V3JpY9ArD
	mvwjeY3WzTxsOfBGHSUWpuTFimVZmRjreE7EjpyE+oovYxfNvIPj521b5C8zAh++p0r
	sFcX9td1dVLJsahA0XjprimUO6WcWqOFM1ffofvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d3df897-86230bb0-178c-4c77-8615-87f66031574d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cea4dfc0badd0da55443375139b77cf82b916af6e8e0b490ac6ea3269a65652
Date: Sat, 23 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658616412
