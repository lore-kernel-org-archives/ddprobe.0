Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAF67B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661320852;
	h=To:Subject:From:Message-Id:Date;
	bh=vY171u/SshF4cY8tx8ev6ousvfOQO/ACUvEnmGbdn40=;
	b=gparOvkBP/2tx5LtylTo3kztaBRfMroKc/g3P5k/uLUTo3BeoN6nYTE8JVp2mhQx
	SWx/4a5vGY4oZX5fLXa/Ii6eL0PIKCSzfjo4WowY4eP0nEr+YtGyCgpk/sZC78AZWD7
	+X6mf4MKnxIT7S0ZM8LRJL2hyuhr5vywfjZUHVTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661320852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vY171u/SshF4cY8tx8ev6ousvfOQO/ACUvEnmGbdn40=;
	b=g/95BlIoEsDjtbtExipsWVsii7Htm8X9D6G6nSiy6udkUYFZDkYU9eh4253aVOoh
	U685E6wtaUISEFmehqY3pJqTuOqeQIChfr4x9qEKB2oRal4UA36I1iUMmcL0cETKmWw
	bUMdCViJE+/j1J5GxSQb7uiv3vi1N56spj205R5o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce70742a-41247ac3-acc7-4eb5-854a-95c7502f9f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ae3a5ad5ae438f550e0305bdc1ce38964a4a889994fd4f96618820b7c5b35e4
Date: Wed, 24 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661320852
