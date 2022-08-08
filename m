Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD967A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659985252;
	h=To:Subject:From:Message-Id:Date;
	bh=e+ag2zkXb5LAxQdnVbKi2dY+jW4SUJHRE9eecTmsYAM=;
	b=OEZ5ftfkuVDJNRyVP2sVx+rv1JFNfnhL/6SiGxuZuCNW4o97GTYiILi8HAiUmUvF
	PF6/RMVtqz9JXjakVmqZIVKK9/w19NovEHOQZTRVoqd7SFp4xGhGInYv3SXfIESWVuZ
	1lB7LjlUh+AZ1A+hLNT1pWLYu5Pv7A/x+ouzKzXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659985252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e+ag2zkXb5LAxQdnVbKi2dY+jW4SUJHRE9eecTmsYAM=;
	b=HH7phJ7t1yCEY3HoBZhs+mrnh0TsYTl5qzfYgLx9WjbesuuERpzvSh0LXrpNSk/u
	4lzSHALD0805R6cMXxjoM+wLDF7BhPqTIrf7qv7dwvESiCpVryxhK3M9zV8XPegM/TI
	NJhGchMuRI9X0FH5T/TXLTUHrv+x0WU5HHNB6ADk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ed4d0d8-9114b959-c908-45e8-b288-651f55328c50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09450fa7742b25822596bbd271e578f22702d7461683c46ff8c5b55f4e869416
Date: Mon, 8 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659985252
