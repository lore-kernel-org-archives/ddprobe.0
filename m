Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FA42F4B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658665012;
	h=To:Subject:From:Message-Id:Date;
	bh=YYdUfukWmmLXWjKpZOSdpBKTEwSIPLQvoKjqXSHysjY=;
	b=HNZXmVTKpDd2CzHK0TYQsFUc10cjuKWTogEgJMfFuNAs4evXD6aLpDAEZgsrnTWB
	mMDFK04iJa7d/7PZze0J0GQ+wqndsH5yqaQUs7r9unJRh+UgtY5YJvrf5nRQKAPr0K6
	Mx40Ya1kSrEqqhj4NhlLqSFvTzL92/+EPtz0y6Pc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658665012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YYdUfukWmmLXWjKpZOSdpBKTEwSIPLQvoKjqXSHysjY=;
	b=jBNQF8u/AWASsSonS76DcJGI7VtQplyLA2xgC5MNUyvSnEtUgfeBIhbQjbL3lQaJ
	1qUnTuNHbNhVew2RPyTpPATtHZvgP6/HW2k8Mb8+lUyJX2Mdjkn0DCKDKkWBEejBPwn
	k0phdGS4SEiZlMFUf76AV3tnIp65TqQLE/R/rM6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230238c1b-f7f32293-bd14-429b-9e09-ce6925e8a1a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e15933a8a8a6d319be077d472456896189c9c81a20311289022cfa7c54dc2b8e
Date: Sun, 24 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658665012
