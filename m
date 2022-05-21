Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001C819F
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 16:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653151559;
	h=To:Subject:From:Message-Id:Date;
	bh=FBT1VTAcMPjX/Bhzj6iUXRAVAigko36xJhyksZgvCVE=;
	b=JwUQm6CKxjvUM7b2zIDuQ6Xc03Mk+w6tnCo5PcRWJn51M0dDeG1boiyEG3+C/1OD
	d1yr7MuE87lOUCpKXVrxs4RBQaaAKUzjv9Gvyv+l8v5FXysBBWvfCgIO1g+7cg0nQIp
	nkCHbGuV2ae8hs8t4MbRQDyCS965of6ExAdahgO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653151559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FBT1VTAcMPjX/Bhzj6iUXRAVAigko36xJhyksZgvCVE=;
	b=dkiye8oeLSK6Mk9sh5G/kSLDKa9YFp9M4q0VyiYUwPIxuYUGinNPzo8dNe9/Io34
	AdCfvr9cfymP0tVQME4ngAajiDaIyafSfGS0BspmYvyLMgNKQcRU3WMX9bJHYna1foT
	6IPyNtDsROfuAIz3F35HXpcgjWAYXH0j1mjhClQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e782ee4d-25a35f67-bf8f-461b-97be-442d8a2dd701-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eda0373b557ac40408d4ac23a4cd233d854716e73f0157113050f2ae89c7a37a
Date: Sat, 21 May 2022 16:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653151559
