Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A372217F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647665785;
	h=To:Subject:From:Message-Id:Date;
	bh=dUO74EgYcKWFEmQPfwPn/z6cKNd6NBnDKvnAFEH0j6I=;
	b=SfD/CPlZHL8pebJlQ1FH8izhr6wUR5qOiTj/o9eI+eDJvjl53VKpBp9gMLy16SYu
	rD7ZGKOcpW7xwEsiJlwJYeoA6tU4sQgLPCNwA3EOchBtbYmScUcODug2NM3JoZh0dkm
	jCJB/7jSoXOHfFZD0el+LPS2VnkUsKX1AP8znSng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647665785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dUO74EgYcKWFEmQPfwPn/z6cKNd6NBnDKvnAFEH0j6I=;
	b=TB0P3wTSGXIPHkW/Yj5CbXFHxRmm5leFo//CWSEnNul+6run6fTB9Oxr2DLv7dox
	1JzMJiO0Igx8SNECzdr17YqAa1MSW2tkxk/Vez3ipr5JBG3n+Y/mrk4QAQa2MUWhcvg
	vQ46mEbDfAucq1NOHmXtA1bEMYhnV3WXtCstKmRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa088a7a4-50946115-697a-4e95-85f9-7c26c7bfe047-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef9f93caa6d50876195262181762e1a9dd74706bc25a3b6c36d431f2dbc01fb0
Date: Sat, 19 Mar 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647665784
