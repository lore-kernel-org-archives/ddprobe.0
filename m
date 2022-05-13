Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E9D256E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 22:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652481959;
	h=To:Subject:From:Message-Id:Date;
	bh=CgJxIo7ra19xU84afn3Jdab9z1cHe7IxuKy/kkh3mi8=;
	b=YPEBFPFfUtBmI+Z2Nqedn0JH1155p8QKIso00RvWW38OBEahBeTlyPgRjpivKKG8
	XHDYxhgjumkjFSwcyo1kO4FVX5bopm1gVc5h3JXsCryQSfJfh/rIjb3DelW19HCH1l7
	v8qKTI8WFo23Mb+GA5MmvRVfVlJ8no4d4Jh19VKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652481959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CgJxIo7ra19xU84afn3Jdab9z1cHe7IxuKy/kkh3mi8=;
	b=W7NkQhZZhnguAtTEcIveaqPZDz+WvmjvMD9waf1j08wE8bjK9TpO5Xks/fSRcCEl
	YuWpL5uKiW45b+q7/373gMuRtVG6FyH7Tcey/VcdwHu5EXm95udaT2VLcrCrTssTqmf
	0vsh5zBjplAQAaOciYIcsD7guzMm3NDxQDxiJIG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf99a592-c152ef32-b664-4453-8412-6b03deddfb89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a27cd95b5e03681f377f057aa5ebfef177864aaa9b036b4ff3ce2fd70236f3c
Date: Fri, 13 May 2022 22:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652481959
