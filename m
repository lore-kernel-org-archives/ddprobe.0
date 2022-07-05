Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B5C33C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657030612;
	h=To:Subject:From:Message-Id:Date;
	bh=fUkD9YdXYPQkxTwVlmtcpDa556zhS3QTTYwWB4gKKPk=;
	b=WUdBH0En3BmRS4RQS40rg45PDZssBJLkKiRH+VmHN1Z9Y1J1QSEDWa6UvywwB7Ws
	UWIbgWXS+NdyuouuSrO0FI5+X44jiysOkTTMGTXCss+jvXl/TA2aHTo31POzlkzIz7S
	dKt9OzaDC8uukmvyXPSsgpy40u40PgElW+ziFKB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657030612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fUkD9YdXYPQkxTwVlmtcpDa556zhS3QTTYwWB4gKKPk=;
	b=PjL1R4Sy5xFVi5LQrt230U58zG5ni9xEzMWdPVWFlz2tQ84BaDE1RU6WXtmGd0ZG
	Kl9ziB5DI5XuQ1wkRbaVmLMiKrEuZiSvrxaCvwwntRrW/ziRbDA27t3WHQyc8oG7aJZ
	E2785we2ZCojG6txNP1fTLJfaZzCQem0jVBic4OM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ceb8952c-3052c779-b8d3-4cd9-aea9-59b4e3637ef4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2713e212d7cff2af3f2a15e1d415a4fdbebcc59fa4db85cec4dd7a32a551311
Date: Tue, 5 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657030612
