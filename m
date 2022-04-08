Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5430D632
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649417398;
	h=To:Subject:From:Message-Id:Date;
	bh=iYsZXuafqpf0BP+jU32xbooJ1bqzCjdiFPAJNAylBx4=;
	b=S8ylnMyVvhNRvJuCjBeDEEAD4L0wGmVdAqYmU8KjbM+01ZoSvZiOC8gWugU1fya4
	+YotRmwufav1ppV5e8hqyPjQ7k4GX9vnTLeSdoItLRXkdw3AFIMNywvVgAe5wz/kfD4
	VfIesr5ES9tQtbx5MWeZf0DyhXqX8v3njtmpsS7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649417398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iYsZXuafqpf0BP+jU32xbooJ1bqzCjdiFPAJNAylBx4=;
	b=MCyhYwlMW/VzedOSO2Zb6uDPGbtIv74VYxFfFOeAEBCqLZbDrmkqIHRMQg6onIVR
	xn3aq/jesWxc3mQ/Lzob9GswlFO1V/1lc3IGSjiDjqJzqH5426nrZdPl9g0qhXRB2My
	WY404xxXHBGrCjvQtSmyxaiabeQ7s7kRU6zDbFiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008f0280f-c6718119-bd30-4ac8-9a09-22b928d4a998-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca343eb909cf781264c5d91b4d9d82d1a6620656ef734ba605a29058a0e0b4a1
Date: Fri, 8 Apr 2022 11:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649417398
