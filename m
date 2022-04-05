Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6564315A3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 04:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649133658;
	h=To:Subject:From:Message-Id:Date;
	bh=1Ko6jg2z8nebh5FizR1tt+bn51ujdWklWR+d1liJmjE=;
	b=NZNc0h7JnPd6TLB0pesa2TNtPFSF7SufZl3rYT2RxVjzyiS44UFjJtu3FDXwhVDG
	tTqYA7aUZsoolwouc08HMXk/EyOupU2UnancnbpYidUYGG+O0RcYfdQwtFu31QHX9Fm
	TYtsLHrDzryVSuU/iH77vAP5jV3xhRt5m3lgI0NI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649133658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Ko6jg2z8nebh5FizR1tt+bn51ujdWklWR+d1liJmjE=;
	b=S25G4MM3nv1OCraieQS+0vDkk5n5gggua2baPqP0a4WrcBwmqeQBLWBqbp1uVJjZ
	8/FmEWe5ZXOXa3aHmzyE6DY479aysqmOzlHsaoQCyT/67Y5VS/pmn1lJ7NrGVqq2Umv
	NzUBXtW/Xad7W4NIm5yd7pTdgsTnHc5OYEsL2ZU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff806a0a0-dc40d3c5-997b-432e-a74c-1b7a976d83c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d62649d96cc607b0c749d042cd6f88d21b7817471a4e8dc37984a92ff9cd85a5
Date: Tue, 5 Apr 2022 04:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649133658
