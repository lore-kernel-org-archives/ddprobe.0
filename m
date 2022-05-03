Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB4D2F2B
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 11:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651577038;
	h=To:Subject:From:Message-Id:Date;
	bh=wwPK63XSoMnDDQhPDwvNgdDV+2GXj44uGyumuzXBBQo=;
	b=LoaHrh7z+HivLNC5k+t7nERnSzunWiR5G5IGhqqeY806+Tu7xnKHYIyFsVoHmTZY
	pzUgu8HTkFwiQmCh0ZgqLU/HtxMdkdKY6uD3jAEynPvDHJyvDxeF1LX+UFzYRJ7VkKN
	zPZGuIZRmYBqQaTf80KpUTBd8PbsoRoN1/fEmHpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651577038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wwPK63XSoMnDDQhPDwvNgdDV+2GXj44uGyumuzXBBQo=;
	b=XEdHcbqyEXbxGrVBrGsUd/Fsjx36ROq2jbP+KTYBmzVNJfvpuRIa+iOZQWpgYhJJ
	gDusnQtIMRiZQ4neMfLto+4s7aYBzGlj2GzPXPDS0TbJJ4Ts1xpca4VeNi30uLwllpF
	2l2r6OwXpX6Cx5i5oCm0uc/szHnMFboj1YCdgt+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089a9a5bd-adcec526-7598-41f5-894f-47454b59f8eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47668136df084a65e3a73f95c2ba1f3d29f9eaa6093b3dca51f001983d7d30fc
Date: Tue, 3 May 2022 11:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651577038
