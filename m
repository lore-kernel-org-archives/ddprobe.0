Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E06A361
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 00:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654992179;
	h=To:Subject:From:Message-Id:Date;
	bh=IYzpsM7p4Vaue7Qxd+5tik8GxM5N1SJnigZj4q2zOJw=;
	b=iVQcQ1zZRR8Yx/c2J46ybFr+nKu8XkpZ3kaBlnATt7yYcpjK2N68drpYSUpEXnET
	QkTMi6H2u7UJwf88x99neDZ7SMpTs3NAo2oMm0Ty3OJwq7jAa42WSDiqmXiy9ut15e7
	TfaGuq3whqs2tcA4FtITN+cGyJ8D4f6XovWOEx4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654992179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IYzpsM7p4Vaue7Qxd+5tik8GxM5N1SJnigZj4q2zOJw=;
	b=M6jqY67ugwy5sIsqIAdgffKlrRaXZRzKY/WsKntSk/j5Hcz1QvHxd/jFlcQ5rlsa
	URaSnwHDwenSFc1r02VwRnpS6rLGskCZYzZxfAI4iZtu+M6q1J9n/CyOPg0WzTiNh3H
	uUFilbabnQCoqGu6OLWsRNlJFo5/+j3gYjQcv6qY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155389000-efb3fb79-2bf9-438f-af7d-aa34c510caf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3539ad4289320db4a79b5a1a2bdf4801671638da03f7bec8b05c051b8f5ab184
Date: Sun, 12 Jun 2022 00:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654992179
