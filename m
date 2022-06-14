Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5FF1FB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 16:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655225579;
	h=To:Subject:From:Message-Id:Date;
	bh=LO5W8PhONsCvVN1V/My5fb+VZy2anwDaNMrvAQrW+CE=;
	b=RxopjTT9nGqIJ1YECMU9qmmIwZZRqjkw6bXk77TkPZsYmKTSxm84jUCyAZTNkV9A
	cgYUDL2MQg10ehADEywISXR/Uu6Tc/7QdIPZFltG3b/V6k0QlrOEdfoXlhB4tkIFcao
	3/cZaf+VHx91Cxez6WkHMTFIX3qE9kowD4TvGtB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655225579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LO5W8PhONsCvVN1V/My5fb+VZy2anwDaNMrvAQrW+CE=;
	b=BB0qOQahVMUiKfvLPa36Kp44cD4iLRSjEbldPjf3eFpcDhnOoMKq7n/RcJQ7wfDl
	1Gj1rqDjtmt5sXhH4IC8CrBLY9BcOrSGpl1T8gv0y8onID9L97ZfZQsOLOdL4DMNTZJ
	Ky1yDMN7m2qlrb/HbVR9kd2Zd2OnUpz3/DOkcWZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816321f722-46543bc3-75ab-4fb5-9728-aea7f0faf166-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69e6da9fcaf1cd35119dda39b289bacd43ef6cfd1fdae457b107b490b0f052a9
Date: Tue, 14 Jun 2022 16:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655225579
