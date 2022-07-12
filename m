Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2205F23AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657597012;
	h=To:Subject:From:Message-Id:Date;
	bh=GvuhmmatM8/8onbqrdSumdwxCuXTk/NdV73ZvcSij+g=;
	b=adincVEiRX3ZlQPMZ7ZLfUqnuWwpbyd0tATKp8ZJugxLi2p8NgWK8dqB5YI/H4P5
	guCUUWoya60LQt0chC1m5z52KqCIMyxKo+lIqTQ4qI4ozkA/CYXKOdGRAIMA/lNWr1w
	83e+WlZrXERBuQ3ZeGOiSQaQRETsCsx+nrwHDK7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657597012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GvuhmmatM8/8onbqrdSumdwxCuXTk/NdV73ZvcSij+g=;
	b=XfJNPuBQZJeP0vP3GbqNtk1WUr9ChTrATaXHDxNYkNwG+awHRqkfiisFk1SvpukN
	tREGLgFW3qRqDOTR+R7hh9aQr5JOQTDC3L4Dp3jKgKQzleHUxFtTynk1ouKfxRqOc+K
	ckpCJhuwW+HnPiILl4GD4EP0GRHpYRRGKy0CeEfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f07b291e-51d89fd6-a155-401d-ae16-56a75de4613c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37696243b957e3fabbbc98c24c5ccceb1a46bcbf353faf7c6fc36830582252aa
Date: Tue, 12 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657597012
