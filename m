Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0BA1851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 11:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653652559;
	h=To:Subject:From:Message-Id:Date;
	bh=LZTaETVXcKH1VlvwppaZJ0QIJoam2q5CRc9h6NhNo1w=;
	b=kk5fBQ8D17UlZzWmtrncnpz9gnSkZAUCGtbvZbrJzm3zVrxyxxTSZ9UhkT7UqgRt
	hBXpuolQJl9sedzZ3oVBdkPoB1j2DgQIZ6VsQqGt9ftSKIwj9amqqdxw0NvZ8/8bCb7
	mKJjuIBzU3cnMloFzbmzVY9TanXXv4qb8NKfaPx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653652559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LZTaETVXcKH1VlvwppaZJ0QIJoam2q5CRc9h6NhNo1w=;
	b=Y+Ev3oowgzaWQnqQ7DwGOTlky73NDNJcCpx8ArMhLrW2FfCmXSsWmzD5wWeVTXd6
	0lQnOgIM3xMs4YTSFYVtzoL/aVONsoeCBkeOhgfCc69q9mO2dkdmc3DD4+pNJCqdQRA
	6l467bkXxmty5xDMa4TOWzXyfYnQBYf8s3D5rYRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181055f95be-dae55f91-4b86-484b-bef1-588345014a21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36a8298452f1cc1e1bd335c9440a8ce81c00f2dde07d7dc51cdd8d040642ddba
Date: Fri, 27 May 2022 11:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653652559
