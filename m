Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABC87A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657616812;
	h=To:Subject:From:Message-Id:Date;
	bh=mGLFbBb4bjj1qYE6o6jj3vtfzz+7d3ytiytaOsQGu3c=;
	b=A5fxz73cEFkY1voI1mynfml33zcJefj2exI+8SfXD8DJdn95uB0zsO6yJDdulLB0
	5TYMPxLBuozDZzOvegFVYXMN2F1M5Md2ARDJfZgitJdfSyK8iV8PB3FPcbCHLHl40ge
	Bur5YRETtRr7IiTf5aROSYKkfuIdsFt2LHGPYeWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657616812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mGLFbBb4bjj1qYE6o6jj3vtfzz+7d3ytiytaOsQGu3c=;
	b=c8DXIED4UjZoXYwF5yDnWAJsIsnGTR2yW4NwH78e5iAZ2PDuE+lIjGfAjmBv1tSJ
	6u4hbLsY59kmlEQUZpHDowpipyhqyAJmRHJy7DdQiSToxhs9dlE+6o+P9v+ipMTC6mW
	jYEFq4cO/Louh3NNH/4k92wd8h5KSz6mtUGyAeV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1a948f7-03471d65-3f1e-4896-b8ec-d524181bde62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a7f5978a202140b5ff8013422510f02f5a4bf1705fd3112a631f5c5d247ed7d
Date: Tue, 12 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657616812
