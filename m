Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9A44C94
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 17:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655832659;
	h=To:Subject:From:Message-Id:Date;
	bh=9dralD0OD9k3HV2Rf530I4+LUWB2x8jhxVSw6nSM6Os=;
	b=BAnoKokgoOInCkWDUpGH+NgpwLMrohbMNoZgZw4ypS0GLnp9HMxG1mr/wBVeDa02
	Ux8DwlCkb9Oy7GvIk5gGrsAGyzrMOfiMrr6AoF4JkVr/uC6+TongRzCpYjQ2R2rl3Zr
	R9Zf9PJ4iNZlVap30RZEeXRPjdcuKQDbeI9zrtyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655832659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9dralD0OD9k3HV2Rf530I4+LUWB2x8jhxVSw6nSM6Os=;
	b=A9gYzGmq6dNbHEQXhhzsfZ1AXniW4QZlkEDGg04eXSgALMM4g9SkLEshJ3K33nuz
	EbabmoRtTRHome3OOUL7wAhPkV4twAL0wOjRh83sSNI3nnBXiIl+FE/d4uSAFknAoTk
	fFyNI67Chev5DPuM/SsHPpmtfQJD8aLoynbETqw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018187514519-20839b6c-ac17-4bad-8faf-7089e6e18bc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e9b977e2b8472b038ef777869f647a851dc96bfa1d706db073ddb24a1225492
Date: Tue, 21 Jun 2022 17:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655832659
