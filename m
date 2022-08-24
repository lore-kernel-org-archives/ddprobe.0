Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B127B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661344252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ny8x2z8CcUXCV9tKkoN7WN3nC8//BwtHbjQfI2UiTpg=;
	b=S5nO2rr3/lHB0TkJDkkTKBzy3u/ucG5TmNu5dpakmMLsUFxwkSJzDWfzRWN6eFAo
	YcaJ2/nbdNirwl6W8UwGLQpqcymgOcYzssaNhJwDEssFDugnTe/opV+1c7TCyBOR3uX
	iu4Oj2xMyHCt9ZdC8/uf9us0ROu3ZF1etV6qlWlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661344252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ny8x2z8CcUXCV9tKkoN7WN3nC8//BwtHbjQfI2UiTpg=;
	b=Tgty92fqMpHcpFVQmZigaWa4+6HDZjW9uyGSVaijRb2t0UC7Tn5e1Ffw9BKHIC3f
	d38Fa9bAlxN+6ePjukx9foIn+k6O/NzFCe0LgNozx1qpNESf62UdcvLVKopAyI1EHkX
	j0XpXfhLp+4Zyu7ZnC+Rn15IN2BXbQZ3pG5ECJew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cfd58297-75f8c296-f3f6-460c-ad84-4575ab556ace-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 707e78d9aa048c312777d1d19311ecb6d53c140b6eb8bb9839baeaaeb37c478d
Date: Wed, 24 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661344252
