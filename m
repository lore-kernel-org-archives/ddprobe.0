Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4797533E0
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 20:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651781038;
	h=To:Subject:From:Message-Id:Date;
	bh=YEuM3wnYRzn/RZ+q6TDDcvfAv6oDW5WSf//6XDnjxG4=;
	b=L4R06vS662W8yu/O2uXOhUF9hgJLCNdqxnnQ/qVkufIHg3ruEkQUet8Ls3byrDBy
	KcMH1dmJzShoiZN9NQQVMYgmFd+DH6sq3KIejUJMDh7ZFowohSrA9eqykQFM5jPvw61
	XusVgPM3RKSgM68/YmIVqNm8ItU4ZVhfvXzZhx2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651781038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YEuM3wnYRzn/RZ+q6TDDcvfAv6oDW5WSf//6XDnjxG4=;
	b=ftacfJv1pQIJuXNeHN6iYEMn0O4LGWjJ5TXIlJskLxxdDY7IvqSoV1x4QbZL+mCm
	N4qOeFYXaYwwJREJrEo5S4S0LO75sF6C/jvOh36mI5BtSrnY1V22XY2v+cWsVGj3COv
	5ZHjfSYQrefaKq/XLOXxpZzrGb4LtaHvQJDREtTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095d270ea-1e5ca1c3-531e-4301-8f6a-417f4fb31719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a01c19294d576accf356b74ded8009330ca5748eaebee38c1313205b594dff3
Date: Thu, 5 May 2022 20:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651781038
