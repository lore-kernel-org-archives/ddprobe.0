Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0616536C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 06:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653286439;
	h=To:Subject:From:Message-Id:Date;
	bh=LHn71grccL0NUyXtjj3yZ0cBoi7h/InRQUdqmrmwp9k=;
	b=MkFMYg2eThJkhO3nj9IGyAAIJZOSYeR+Jp0gojZt+/8AlqWwnsHTcdQqE4ZPKp9U
	uqpSPhuFs8V2IUCJObkYSrnjHZSTXdhVuebGELJapuSNFMMUaY5RsvlwPWsDNQwBA1E
	aesn3BaO+IHP9pRjJVTDgzNTR++s2TbkD1YNi9gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653286439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LHn71grccL0NUyXtjj3yZ0cBoi7h/InRQUdqmrmwp9k=;
	b=acma3T97O+9lcx6aJZ055spe83ptoSdil8GDGfLDeNwGJ9s+PSMv/y3VmHMUFVC3
	cY4j5B1v6xGsNhrBicszduFsxHv2AhvjGxKWgZre3gRkJhEBeOKogHD6mO2ftgPdKcK
	8Nn6uBc55DLmWINO34j/b5sthYOOkukgHBRu/KOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef8d0913-5109740c-eb0f-4f25-b38a-a34ae35f023c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70db16943f80726a41404960cce92f1716c05b7868f84b1c7db6d278f1bc7e45
Date: Mon, 23 May 2022 06:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653286438
