Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD42ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657375612;
	h=To:Subject:From:Message-Id:Date;
	bh=vjHIrBzWxcRZ3A1F+0lvzg0i5eV7VBEcFNC5MF+GpMo=;
	b=OQA93bvzuGXhDk4qP2QSgpsfM+6gDi1C+7/4OQYrov0V32nM32bv/Y8TbauyrBsB
	rRCbpa0tM07z5JnSfvgQyUCa/As3Y6kh6ot6llbAtdAcVRDDTAS/qes9dTRndS26lVT
	/vPi5f7e8U5XPWVUAHBbHu5fScxUgC1Id4PuSBJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657375612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vjHIrBzWxcRZ3A1F+0lvzg0i5eV7VBEcFNC5MF+GpMo=;
	b=bawpWffycVYX9rW9gweQiqskzjKpZ23P+ErvGIj2jMzfe75ShgxaHCk+9094frul
	1L9HgJlzMzBDc7DL15sC1APr3BRA/SyceXdjo2UEILlorlfSOTCcceeRXrC8cTlu5y4
	LxZL/6fHNbF7eUgeaf1bcyIntJs+dw7AUrReeCJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e348ddc4-1aa6cf8b-14a7-44a9-8cc3-7dc9fbc62bdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11183418779ea402e5b704e72474b9e0ff99e5316f1c465de2aac35607ff9efe
Date: Sat, 9 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657375612
