Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3965D7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 12:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649509078;
	h=To:Subject:From:Message-Id:Date;
	bh=1XyleWNsNMIOwpIL/eCoHAST5tGYcToaiiODBZzCHD0=;
	b=Zg3Uh/fiUgdEEpULOjeoKddRWJNXhBLm2WmmsqfuIK6HTO4zNgo1Q63L3hw37sOv
	7bZ2Rw8d3f0TU6/HLoQ+v6zPgEp8GXEAD1mdTTLtY+dHpE+XL70UFkjKJ3PMUbWWoD6
	fK+Axi5SpgCVzOHupsEJimbVR2uhueJ7Zd7bvQ3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649509078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1XyleWNsNMIOwpIL/eCoHAST5tGYcToaiiODBZzCHD0=;
	b=eezpMk1BeQ2KX+LOXwy7Wn5LvVe0W+CtyMF5AnpdUk1J5laFMJ/daCBmW/WuScsm
	9ER1xI7TyePRR7n84jYYp3JqBRRlWGAfLL7MCd82764J+Y0E2xWnwQWMkWnsBL09HeM
	utDH06dXvU7G8MKD3HDBHnbyId6GNA6RlqrRGJ8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800e671510-6d5935b5-b747-4ebd-8ec2-1a09d6739560-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f999c107828c60d129b05fa9b2d2a6f277c409c38a6a4d0239d638bd1b42df92
Date: Sat, 9 Apr 2022 12:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649509078
