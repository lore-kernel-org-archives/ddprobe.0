Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6CF36A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661045453;
	h=To:Subject:From:Message-Id:Date;
	bh=cOfogzeozuXT+1Yj2dmeharfZZG7D/RmXh3P9NwSYD8=;
	b=ZzSKOmlbopW4YJ2BERyl9yTNUsmlbufSDaUHYAUYbutVDak+snnxMBtotFrSThLr
	SuKRAjDOlcV07mT7uXehaPhWGoRf7Xthnk0YZpgos1Vt9cyMr0Kjpsv5ZhSKBXlaNdQ
	ywUufsB1cOYN2/A1lxAVpzrRDmC/35TOSyYIO0eM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661045453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cOfogzeozuXT+1Yj2dmeharfZZG7D/RmXh3P9NwSYD8=;
	b=UrHrHsdfpfEeh+cn0RdC+A1LaVeIcW+6KvClGoKIHwPyID/wbzNhqYuiSvAZkicb
	eXElBeEScQiuisxAs+E85/X7rx0/3ITICA4eiOsVfoj9uYmdQOc43Q6fnZfQTuDgy6x
	1ESkINy/BAecl85WpLwn+YCO1RbanYpLAk9buhQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be062f4d-07d2e098-c2a0-4f30-a295-73a25ae70b60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62f50e1d2c92ab83b0e68b3dfb7d4474886f46cd60ea01991a01ead778e0e6b5
Date: Sun, 21 Aug 2022 01:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661045452
