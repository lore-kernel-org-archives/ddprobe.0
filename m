Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FB815A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656896812;
	h=To:Subject:From:Message-Id:Date;
	bh=qvYC91ylf4M9Xde3PjTV4sYogPlRoCM3cGt+2Z02S94=;
	b=HAwVxpL9gfL/6dYMoN169ya3LgwqnDHkcMZlB26gv/yYrWZmuQNO1xXEcPdF/mC2
	oiwviWu/7zC72XFhyRLg4zh+K15PJtiMTJqXgDRVMoJdPFsA3GAdM4QmNvA4oleUkIj
	jRznRjID1RoYNdrg6bsjjyiB4lwvUdmMhbbENohY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656896812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qvYC91ylf4M9Xde3PjTV4sYogPlRoCM3cGt+2Z02S94=;
	b=cW6CutZg34i4WLeHlUNty+nNjByXB7Txs0XYJBSHbkvlilFjglfDLAiVhxp1heNJ
	tISQDl0G07TjWNfYx6hAhinaR79mA9V1odnig7l/HEJFq5rupseFsHA+iqLbwqymS/4
	UjY0jOeFaMscfTURWDVuOtGDnGOUa0UOWnZRfTog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6bef4e8-dbf75203-93dc-409f-9566-8e8ca23b9701-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 853592535a55c710f4c67e12d53fde56839de95880ec9be11cc252407b732fca
Date: Mon, 4 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656896812
