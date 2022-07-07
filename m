Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147DB624
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657193812;
	h=To:Subject:From:Message-Id:Date;
	bh=HuFHrTs17sRCVXOxGyuEKCYyKMwxKV4KP5Mv6ZKRf3Q=;
	b=R24yNr8Gb/f8sK/2TG/G+yGHB36yH8D9ktskvX2LIYc7JSpKJ4wjMjBNyexlNja0
	2mE+ux3UtSNdkWxHGfnd6Y6Wxrmy7SVvxuq4BPjmDfScgLFPnuflV9NUJm1P8RLfjds
	zY0mLfkMBDssa6TDjlzAopRfS0LP38Y3b3Ut7GRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657193812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HuFHrTs17sRCVXOxGyuEKCYyKMwxKV4KP5Mv6ZKRf3Q=;
	b=iQ8ppX/IsIoYmyLaI4USD/T2d7E0OCMqY/V/aHJbELVb7TUCy2ZI7UglPzTgonhe
	SHKseWw8o/ZthnxBkEpy1/MZWjCJt/QBTfk56MvdZHUHR/veFfkaKr609izfDLPfuRL
	cuJ+ZJa0WeGPRuSYlpNKPz+CRrei+WnCSMchp1Qs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d872d13d-4e3e39ff-7e77-4e00-aa2a-d67158217f8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 539773378fbb3c6c57cdfecbd8cf1c908f7561d86cde55384ea58205c8336f9d
Date: Thu, 7 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657193812
