Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474837FA
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661165452;
	h=To:Subject:From:Message-Id:Date;
	bh=NS72mFl0cN8uTY98fBexNb/81i0qJcYAePtw6pfRu4A=;
	b=jstUFwfpiETMMg4sVsAaZgP1ezjcZrzAhm8FFLWgVxvqMzAArA3tudMqoX/07+81
	W/2UjcVWmgUUsFPvbszQWjZCqagBpTtaC/MC00n5J+IwdWYo5qqAp8omAu4E9rurZQu
	vhlIurp6glGaLd0H8F9IcLNMm2wMQJvirRO0+MaA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661165452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NS72mFl0cN8uTY98fBexNb/81i0qJcYAePtw6pfRu4A=;
	b=PvaU1qPr00ZV0stKJcOiZGx0MqsZdnqwAZRJNKiArOeIGaNIpVXtO0z7KUGr43LH
	QDlD6354iP90oi5czxHCL3h8u6FgPUjEYX0Do48GfHcQz2iHQZoDaFU5oNoK27wlsIA
	0tcCvvZIaDbgbDVuK7LE7po+0GUjLXc8MM4tSdK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c52d3d08-143c15d9-8284-4dbb-8f38-bb26ab0bb91c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94d6423c4192c4e3bd0422962378e25e9bd90fcf5e16b4d8af40e12ef583c735
Date: Mon, 22 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661165452
