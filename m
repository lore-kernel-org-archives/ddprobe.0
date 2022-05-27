Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5D546AA
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 08:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653640199;
	h=To:Subject:From:Message-Id:Date;
	bh=YLNmd8ZkUfAOZqBhlNwA97j4wGxD6KU/8XpC0p31Bfo=;
	b=EITtMLCuUFHEfiVsBRkIQDClZeSnrciGiXfC3ud7xs5Cpg3yfLSqs7NUWYJzBTK6
	XfP8WH8z4RM0d6sr5uJ8UAbEfYdhpkt2941ZP69SPTzoxVbIeD2QAeW9hLpdFiosYy+
	Q6zV0TJQdpITW+2VyfNS3hLlqF7+OMIkZsY/Debs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653640199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YLNmd8ZkUfAOZqBhlNwA97j4wGxD6KU/8XpC0p31Bfo=;
	b=CUF7pNq3JOH6611mAFzsGV/bAmJJ2oCradrqMr169z+nZzFV+wwS9Psw7Fsnsn4E
	6x1gQ2BhYeet61QU7W2HnNJwvRruQrVFl2Gzr3HBKs+/Mdd9uQhbl+2HNsP/QgewKAE
	ty2mrkbqS932cGI66uiWjqaA/uwp89/zU13A4MvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104a2fc4b-33a29768-57b3-4fb5-914e-75cbf42dbc85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fe31b0ce1393848695c056e3bb1011149c5f804b488f39b7d909d26eff8a48b
Date: Fri, 27 May 2022 08:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653640199
