Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB48A5580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645292184;
	h=To:Subject:From:Message-Id:Date;
	bh=Z7zx65bPRBBJ76vZqHtpNC6ksqnwy7cOGdjY/uPCzoE=;
	b=BS25QTnkpf8jQXkd+yunzRrDI93Wn06Lvz7I/uRzRU79nrLG1+6aE5yCcMYYbwnu
	DduJpuE/5jN9sV8UqriCo40PiYor629vBFqaBrEjlMvGoE1Z5xakSRRJo3Xbvk20oOt
	nc429PNgBs+67N4yh9Jhcj+EM1bR6XED17QTXENc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645292184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z7zx65bPRBBJ76vZqHtpNC6ksqnwy7cOGdjY/uPCzoE=;
	b=NtOGdsuyEDQ4m4vNXQWcZ2PSmKcW/cw7yFPMx7JpQHt4HXkTRWrAo2q8DViTzxo5
	iVKFPlKX5Dmotcf8ZsA4L9PV5G/XCfw5CQ+3Ld+6TgJWQTIkJhSAtVfkXBC1I7L8izg
	IfMVjQf+PqyMg1NPHs5Dkq7/PgUhxsCEN4w2LsEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f130e64bd-e78e5c9e-aa90-4620-86a3-52a880dd81b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 798793fe71da7d8a68894859154274e9fe2e9751d86956fbc1ae62aeea49c930
Date: Sat, 19 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645292184
