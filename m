Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057F63232
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 13:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652363519;
	h=To:Subject:From:Message-Id:Date;
	bh=Qau7AX7fI1qizXO1d98OdcgXHSbudvfzCOK1srBAOSw=;
	b=Qd9HVrvI7/fsPGab3PwRO5JBQyNZTTyuhN3hVmh8rUH0bVl0XjrhMfhV5QPa4K8e
	0s/5weEVYSraAmi3bAlPVFSWE8DdGnroVukTC3pg6PrcAzsS5PT0cggvUvrksPGv355
	PRx9BuLgHcOzllQiQSkSMOjboFlx9Th+G8UjC52A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652363519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qau7AX7fI1qizXO1d98OdcgXHSbudvfzCOK1srBAOSw=;
	b=EYxvDuqilbu5Iffhg14YOhT3Pvnp3zvS80GbxLDrHOZvq/UUOn5kbHgzQMPmG+kd
	feyQhKmhuGXfRd8nDddvSiIjVsfeoypb3e7q2W3uEHC5qMknFV4+1frB+Z7iMoYBtCu
	RFWAahjuHh8kSaRNm7Gbxy4tcV9m/MywMz6n9Auk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b88a655b-bd301009-c44c-4db0-a5ab-820deae184d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60e5212ac5603351d3d5c31263bb741f9ce36af15a47a4e78ed4d275630990e9
Date: Thu, 12 May 2022 13:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652363519
