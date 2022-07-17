Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F36C259C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658093813;
	h=To:Subject:From:Message-Id:Date;
	bh=wWlv0sexQWh3pUI8nnS5S8XcfodZTNmsBhJ67aMKaGc=;
	b=Z/Q9tmvHtnqaRUqambVxqYFAXDQpXWFah/Cf3coIWl7ozYf/cwZQfv6GV6AYHlMB
	jFfi/Jabz0td5Rh27HIIhAkCCyDNU4ovfbdcJ3zHdEughjLegG8u+Y4melDiIEZBMv/
	WPozpnPdFSBK/DmFGEbDOqkn+G8s2prxWY+fCcgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658093813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wWlv0sexQWh3pUI8nnS5S8XcfodZTNmsBhJ67aMKaGc=;
	b=iqpPWzV5h4+RryusFuUb5FEyGzAcygfILSBYYy2zWA19MbBFAgX+s9pOUdkke1T+
	KUQLqVKWHW5xXk+9+zPAF5O4ShvQvZOVW5pi3xfPgHnjuTWqVF8nEG6QbcJdeOayLWe
	V0UmhYg+HTIfLvEvH6xFz3lJPUQTd/zUCqIssrqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820e17ba37-29c239c0-9da2-407f-b2cb-732faf126d2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ebedb7bd8534413634625ce67541a51fb7a639ba94d02fb6afccc51f1277427
Date: Sun, 17 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658093812
