Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E0E7C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645863985;
	h=To:Subject:From:Message-Id:Date;
	bh=4A21mQ9NNyN23+bfYtjTcQTgdg9w+NqCF1ZD7ydPc9U=;
	b=Nzrw2pw2oc0xkvN5QjM7AzPGzNPHGW7tFZhbFy9QfC6RXJwzzOz7s2k+EmFxHnz3
	sCb84Q3wh7upMRCNHpuKNGkEGWCDo9UINBPEon4yqserc1FCDFhIVEHzwWDzONKxpBI
	S/GXYWJA5bHaO1uDLVEihOJq/Rm6TAClih49/1Bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645863985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4A21mQ9NNyN23+bfYtjTcQTgdg9w+NqCF1ZD7ydPc9U=;
	b=FV8C28puNKRwqsh0JlP0J92bj4Z7+TWStzS/fzwJC7aUJhU7mT07pIldsOHAxDTW
	QZUxt6ftUslYe/pl9pWaat0jPzG5bfcFIB0gy47qMnQW3FRIvMjLXCcj8piSeYD0MWT
	xIykI8NRX4RqEiSJuFwor+AuGSOrYuqugK0CNrUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35235e72-5e90ad63-6cb3-4510-b01d-187fe1d05a94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 718748e6f835322ae32a89f56e027924bae33efb3c56e0f26877a0bf3808201f
Date: Sat, 26 Feb 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645863984
