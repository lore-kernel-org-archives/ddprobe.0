Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D70C198
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658659012;
	h=To:Subject:From:Message-Id:Date;
	bh=9cDEf+/RJpP4rFIDPZnghj5HFUwHyzK7l6uSHhXkwv8=;
	b=Q3CiESIhqTA35Z37GJ5QzhlY4u5NoGQKjEBCUAeeQXdNoUE56qtrgG/qr/jO2vVd
	YGB9o4W0EtwSaC7aLGEAb00PMgGVjSKr9pJW7TLza3PSByJsQYGipkNdAIqt3oDl7Ec
	UxvxKdg0y0jYYwYXZ/wG6dsqP+FoLsW0qGJ3hLNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658659012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9cDEf+/RJpP4rFIDPZnghj5HFUwHyzK7l6uSHhXkwv8=;
	b=hmj95R+06aphcIwW3vG9J+wPRgGnkeP7Q8DGLzBi/9RZz/D7r5ZQwXaFjFmERVW6
	xViz4qLkxlrda/NrdWMUy40HpjP+75aht2UDJO4oobaikEOkQNDGUmKaZ2l+XZrbdjb
	nwrRU/3b88UBhGoNyHdDwBO0F8RlMu/z9L/7xjMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822fc7fedc-9b458edf-194a-4cd9-baf3-2c2c01f569d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa3fe06bd2d203cd1aad37ae6af36da89c1fe9e065212b1ed55d6cb1bb41cc5e
Date: Sun, 24 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658659012
