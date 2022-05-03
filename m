Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E217F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 10:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651573798;
	h=To:Subject:From:Message-Id:Date;
	bh=/mbfmXfDumfJYTlvIsrbLI52k8FRvufHBI3zsFKpIR0=;
	b=dXpjj9CS2Vk9ne/su2qtoR24wGHKM17YJJ6PDv/Hqz+cxqs+YdaC9PFTjym83jxd
	Qten1bjPZ/CvS9Vt/VZg/8ZRGZRRkiT18ooIcX5Fo3rEek8+Es2AypZ2O1MiyM1TkbE
	aTfecjDqmMdwdIG0KsKjuy8sBDLOFLZ4Fw3GJUx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651573798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/mbfmXfDumfJYTlvIsrbLI52k8FRvufHBI3zsFKpIR0=;
	b=DbV4/RUleqkpuUW0vCmjZPFG89wDNR/BV+AcfMhRQjPEJ1w1hMuuPuOtzX4ztVyZ
	2KH6L+JRnee+qM+POPlviBst91Iwh0ituvoe8DzH/6jEa2OQ9HsPr+mgS95NcB215er
	HJQc9iUvnwkLfFNqgwsQaeVBj98Gjq/kjtbqYqig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089783565-8890caa5-42b6-4e75-b754-05ae9bc2f798-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85624be22077789aefa000f817c4210e05e8fa6bea66ffd2ef8c137796f94be1
Date: Tue, 3 May 2022 10:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651573798
