Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BF0ECE
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656593212;
	h=To:Subject:From:Message-Id:Date;
	bh=AoqQ36eBsbJQm51kYrRaVO63JN3O9YnO7tgMF9BvzRQ=;
	b=fiNL3CF68zRC8aqhq/U0i2To8Lbcbm/5MyktTzc8VaiequsGb6gPHxA1sUNZMIE/
	1MIG25wisQ6qE30VWiy1tGwo0Iqi3L25P1w5zDL3MA7m8NQk4olYgGlrTHGzYK7Elal
	WMQ0USJi3MNVfee1ebXvl/g185DlVUP7TZzy0dlw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656593212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AoqQ36eBsbJQm51kYrRaVO63JN3O9YnO7tgMF9BvzRQ=;
	b=NgLrHuPi9qyBd48FFVORRJId49LOVL3wZvLPv2W8DmWPaofVtkYYJunx0M5sQsA7
	JcpG0DMFzjhd73ugxBX/Sg0VuPXp2GCPjJPdbI11REy++J031KeMwbDBEqfnrb2j4fJ
	pmTxMd20lR4matIl4xk6Yv5Zw+kov+ztvY2ba0U4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4a6636d-0ff08d08-80c9-4e27-af28-a84e56769dcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b6b51dc70f50869577c1238555ed378a874df61aa397010f05f336449c83963
Date: Thu, 30 Jun 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656593212
