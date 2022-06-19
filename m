Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212327B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 13:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655644139;
	h=To:Subject:From:Message-Id:Date;
	bh=/gV9M1bDYhSHVUv6TSu0IOufMqruHVwbmbfsUUZcAWk=;
	b=jifkaB5Q/3OBUj4yzyS7C2IMvTbJh772p93MioGbNpgWD0+vkSF9XIE1Fw2O04ps
	NdyvUpXEXSwK55yUi82y3aYvN3V06z0UVVzqIIHvQkaD0L1gCTfOvIBLH3H647nEGxO
	9qP+c0Avn8kMJGRUdEcFppHxwoZ/vUWLOONSnY2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655644139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/gV9M1bDYhSHVUv6TSu0IOufMqruHVwbmbfsUUZcAWk=;
	b=QbdERbkRUrOd40H/xls+Kr6nLyYPm54WoIxmhVscOHVSuidjFdQXT9Mwv3oQ7S60
	zodKaKmhme2QsCL+irZtvhUHMbYsUqI+vcwixOO2d62pMnxmRA32NbEzv8fk9+Rsni9
	DrxBiWRCsqBl1VQU9Z6HJ4GOhl0dpzpH/ljzRaN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c14af5a-41107278-bacb-4ba8-a258-f6b53c919719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 280d4c8350c55dfd356c7d909bd95563820c8adb9070cab76a36e6436a579cf4
Date: Sun, 19 Jun 2022 13:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655644139
