Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114627F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651538338;
	h=To:Subject:From:Message-Id:Date;
	bh=XyCvvJ1WCl2dtEwud3MPI+9XdJkzAzQeIJGoZQ37KSM=;
	b=GBg6igl/9sqVNkYbaP5MI0lpf3PNB+j5OxLZglTiezZDIbOeA4sQkZKt2G6PpyMj
	iH6NR2uH9cQR12xiMEyxh0onWcuG6mgWSiDFcWPQ6ObmowJUKfl11QVktr8hVEv/I7w
	6APo9h8gA0iZPfjQzSskjwnyFAyE7eobUfopQZO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651538338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XyCvvJ1WCl2dtEwud3MPI+9XdJkzAzQeIJGoZQ37KSM=;
	b=e8WVuORY+bchpJnyR2UA8xNg6cMGoqyy6/ob/imHgF5fYiXiDs1sp2j/scgpo2MF
	gwb/eAztvPu1Txpo8bCZMqE61zZhGo1/STBnFBsQ4R7XEhqLpI2rzfkxbPgNAxrgT5H
	JfreHXvURpoCXbjmRCU3gUitdtumEJuXJetdWXGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180875b21ed-04ec9132-573c-401f-99d9-98648c9aec7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b42bd568f831b31b89be70669b8135e5e23c032344f55dd938401ec909d68023
Date: Tue, 3 May 2022 00:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651538338
