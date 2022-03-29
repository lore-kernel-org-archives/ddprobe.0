Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2822629A2
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 21:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648588018;
	h=To:Subject:From:Message-Id:Date;
	bh=B+UNC3W9Qvzg1A3cWEydIS0wCd+s7lZ1UgAh6q7suGA=;
	b=YTU7JzV+t2DdG3OYWq9PbQYzTViv2IaMV8vu/nH3BTXto5UG14ebR4IVzuVoGK2i
	rCr8n6uJunvTh2FgNPoRKp/8c1nI9W2KU5oYLKUIs4ssM/UtgSD65xteIl5AnOzlaes
	c6126fWlgdPM/JNc+U4U34+0lCZVHYV/rsfmOdrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648588018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B+UNC3W9Qvzg1A3cWEydIS0wCd+s7lZ1UgAh6q7suGA=;
	b=e/lVhqmAT5cGpn8UgiEc/INhFQ0XENhbNVqy4+GO+qzmks/v0iqPVwC7sOX/PIrM
	emmLIzYtZUNOaQ+ttvZUZLa2iLIZfGwLGIn/g3C2rdIzVXHZQBfpOglyjb6xEVhhiTK
	agQVZrBomzrQ0dfsLf6RUO8fSniY1QP8BjUjU314=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd780d240-30ecdf5a-8a69-479c-9403-65bdbee9d580-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99ab83a534407dcb80465577d213bdcabaa8975cc5691d351d8f96ef369e0d56
Date: Tue, 29 Mar 2022 21:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648588018
