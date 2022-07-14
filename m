Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053E97A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657778812;
	h=To:Subject:From:Message-Id:Date;
	bh=4S2NgJzq3/DRgZDIqs8DQrTyL2eG729cA84VcRJ7aeg=;
	b=B3syrB7TACLItCusrhI9AHb2KmpboOkQGzfjp5WNl94RhrVaAX4IrJaGWILKAOtH
	X6l9MzSPkqWflwxDzv+vy4tODrnypuVOSzZhIbkEdja7gR3qcfQ3kmbomL20ZVhLTyW
	kDImzn6pqvheX5Ao3cCNxqtuQotCYaGEnsAELaeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657778812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4S2NgJzq3/DRgZDIqs8DQrTyL2eG729cA84VcRJ7aeg=;
	b=XrsM7291gWdB/bczpuvrKs86tsRzTMJHZ6HREz3QR9JWTN+gob3k9UWiroNY7UB1
	dvpoJfJy/cOml+adCb+svVOhoQDxb151Ilmy4TjqnS1n5nPSf+cUslxJ5TsBfdFjIDA
	F1fd55r5vfaS/W5v/mutrls1KzpwZJMbMqq40ZhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb513555-cca229d1-a89e-47a5-a91d-698fc8b5887d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8801a386cfbb387517cf239c77bb7ac36b09532253ebcd8cfdf8732cb62abc2d
Date: Thu, 14 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657778812
