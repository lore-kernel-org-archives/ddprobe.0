Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639F7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 16:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649867698;
	h=To:Subject:From:Message-Id:Date;
	bh=MP76OgRFSdIgP4KGdxtwfBXHiF+GcjGhHcX2NunYtyo=;
	b=dPEev5FlYfwFvs9eVY00IN+TXYFV9OvO3IGKygRfDe+BYbYXdSSbFfTlEQ1xYMM9
	utYuWkh74HLGvJ3Aazl703swaPcpInaA5MiqlHhBDM73n9cAUqQXLUYyyXSfyoXodOW
	ARkS1kKzu1UO/dWk1rzYfAd2D7KfncZ3qIPcBvno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649867698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MP76OgRFSdIgP4KGdxtwfBXHiF+GcjGhHcX2NunYtyo=;
	b=G9LYCRcYUYCBRDgpZI0U1ruuYsGVntt8jq9jbtZVWA6cj4HpnM0GvPSz6JOkKvzd
	PCfIoV9tm/ZFUsqVCjVzpnk4P9ABVXrrpnim/544Yf88BpiKEZV7mz+97dx93Ay5/tg
	8ZdznIbiIFU9uxp04OammchwtZsjuX4w2OMmaYno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018023c73073-291a54d3-3ea8-4a3f-8157-76716f991000-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 721152d8774dd3799f1213846d96ff02cc7fbf4b82544a4147640af2520b2ae3
Date: Wed, 13 Apr 2022 16:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649867698
