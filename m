Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022AD7FC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658106412;
	h=To:Subject:From:Message-Id:Date;
	bh=GppcvoIeaNzc5mdrbnTMwGGhgbhBhu7wYaQYNtuDQm4=;
	b=GCpyscIfg6/bkznw1xNyh1jvka0tT/WmJLboFR3V1taljwUXYgHR6CEY8sZHqpEU
	DrKiSEmHbsIMjDy6/o+Kwh2MZiSLu++QcgcwCf/qxtVBCW6uLeF/TyQerYRY1UhVhie
	/cYQ3eBQOEpLmQMnvyNeODx/LHDMeTvcasSwETZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658106412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GppcvoIeaNzc5mdrbnTMwGGhgbhBhu7wYaQYNtuDQm4=;
	b=HrRdqTocbGa0QF+Mz4qtCVbqPRwxr03hckELRg1vua2KKSYw5dZif/zOB+ir2pUe
	FJ636WoVuLi+rxuDfcIUMYImdWECM6DTg3kZ8qjt8zjSrcV7HuakVbuhPLrS1sUCVlQ
	zZf/ZsKwXB3f2RujZb7L7kBFucRiEFoneA+U0hEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ed7fd19-23dfe60e-6f7a-43af-9e30-ea46e4fa4c52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c8d9e11d1604aa1d58bb44b1fa292944b2dd9232639beb7423b95a2062958c0
Date: Mon, 18 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658106412
