Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EC07B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661177452;
	h=To:Subject:From:Message-Id:Date;
	bh=Ukeuyxo3lgLSK5l5zUKTp1GeUgbrgVLQ8YXYBdpJ32g=;
	b=QpW2CHjD3upEj4dzNTxMSSWgEP9BBD1Crtv2eK49vc9DDeHb60D2+8N9jpG5/76F
	+3cQJqBW439nyPizZtgke8zRbeJl0UPfDJbp/aZFsUZsMMdS7nvaCdBKv1KGZkRAJhY
	IqvA+vnaAnpoJe6gW2CYYZfjGmXUa2x4uIRMQI0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661177452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ukeuyxo3lgLSK5l5zUKTp1GeUgbrgVLQ8YXYBdpJ32g=;
	b=c5rRXVSCbGZGVw0wUDxfIEHrlqxJZr4Eq0awfYlIiXihsdZOSehYPhdK8tiLp3d1
	8TMvd786khko7bWoAG3jFEYwT2JzfHm7lCH8qcwpos1FyQEEsiws0M67hq4kdCkwF9Y
	j7ms1HQnnlSDAlgO9HwMUMxojcx/ZCJqp89SLZw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5e45801-1eb115d2-8565-4783-9c09-e3630a3847e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44f10c2c00632ff963c2517567d36c5288693517562f349fcb2025ae6f028e95
Date: Mon, 22 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661177452
