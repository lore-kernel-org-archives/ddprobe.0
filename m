Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701E323BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659944452;
	h=To:Subject:From:Message-Id:Date;
	bh=KUz0M755lqHx5W3QBWPZfYnQCl7dPcu1xbEz7o4+wcg=;
	b=CcOonl+7LSSMBzhn91U7cdN48WXeMMUx/p0sq+WHu+JrqsAx8dkCEGg8BYaZ5WG9
	w4cq5rVIYt5MqKrORLkg2YSTwY46jGioelH0cLt/HUvY/LwYBqHRoGpOTC7OsKB+V5M
	CLnK5e+6xzulOjxefYnYk6qxF7E76fb2etX2PI4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659944452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KUz0M755lqHx5W3QBWPZfYnQCl7dPcu1xbEz7o4+wcg=;
	b=A91g6QLMBCt5uezXBpRrzPltlwvezGdBzy4a4IjCYGjcOtBbI0G9TfPD0p4k+/Q2
	aJXk/OYZxkSg3XVR/gxmkOLaKVr9NS1jr5kAwk3OKd2mIKPnxVQNI5Lk/7VkE9ki9Kw
	1DvP7m4+D4AYzQDa/ijEVlNu7Z0+B4wSTNgCMGpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c664227-dcfc9c8d-c75c-4d57-a80f-5b499dc01878-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45e0bf8997c89f8b3ae93078e36e0b824740ab1533a289db39b2b51752e22545
Date: Mon, 8 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659944452
