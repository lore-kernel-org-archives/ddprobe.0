Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D24B2574
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659205852;
	h=To:Subject:From:Message-Id:Date;
	bh=uOhEzHf50ZcU7yKjr6/J1O7HhN7o13KhqJVfim5IuQo=;
	b=goYti9Wl2QkGVm3w6w3vW+xmrjQBlapAR/IQe/3sOZeRBk66L+D3dDRw8hQjwRzA
	MY6bUymQRV3dj4lvrJuLnUxf/wTAXHh4MOFlGCDcrWyiP46Cs8Uz+CVzrS2buvlsfRL
	6ezCTo0saavvAr8EXEoerey0efv5FxjTnLy8xN2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659205852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uOhEzHf50ZcU7yKjr6/J1O7HhN7o13KhqJVfim5IuQo=;
	b=C3YmgodE6qbnR/pyjdXt/cZvdKCgspWGTWUqBs8uk4c10hvek3gldvL8SCQ7WPCh
	uHvbQJMtO7Bk4Sam65lm52PnzbUFG2Eyvx/ns/0aXy2qkt7z4k9vP69bt9MtRBsdtXR
	/7lmnvLed/mDgWCjfLq/RcToHOAY1B9ItRnwI0kI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250601d8a-62a9fcf8-49d6-49d8-bdab-849dac8ee8e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b81f7a1fc61a7ca44042faa9219f69659c598289a27274d8f3a122e322b3440a
Date: Sat, 30 Jul 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659205852
