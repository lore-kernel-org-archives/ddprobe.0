Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858203D6E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656592612;
	h=To:Subject:From:Message-Id:Date;
	bh=DxjC3G/Q6Cim1Sh3h8VV6oiNTnBGLbhfMAPjRimOds0=;
	b=eXuOS9AETVdK/hKVgYJrhnLoueLSVJV5omunYdBiURWsljA+apwjD87q94TOxgFI
	cUU9kAjnB2saAKP7cAERbt3MLSFhtBPTtH82Fb42MXps4zMQzDAnDEjNiJM0Xa0I2vy
	IZFeEz+ilImlv4PjZd/oKA4Od0B8scLRzJDrlfM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656592612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DxjC3G/Q6Cim1Sh3h8VV6oiNTnBGLbhfMAPjRimOds0=;
	b=ZmxnSdI44rLLGtQHe3nxrRKgQmPVuWVFhpAgBx3kqpf4kQxic48/6k3cj144te3L
	povhWWiobpfCxWfSND6ucKZ6MFHZruKh1cFqlTQfVuza9fI90ZG4Y3W/bt3zI8v+vJP
	SlWqkN9XYbkp/doIyzj+3WVSUtsNDXfc6JbHYLII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b49d3b9e-6f81d948-d917-48e8-be81-cc34a55df650-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32f593bcbba7ece1ab0a6d9b57fee19c3bba163384075c7b34cb401fd1c53af8
Date: Thu, 30 Jun 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656592612
