Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC8B23AA
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658476612;
	h=To:Subject:From:Message-Id:Date;
	bh=f751rEvHvG8Yl2dnfiDQOmGAgAdOH8q21AE26Ia5W4Q=;
	b=lHNHVIIQaAyOUM762UpEyF+snVK7cJ2zrcCbhzm1B2VKzYijSq3QvbzV80stlG4a
	6F/IBWQk50VMQUr6OJJK1z+7clvaVtBPibxBsPKNfjDrDca5+y+xCc+aAEvqcv9YIbh
	1fanZUUHJqEEVjuyuQxjtcC+E4Ng6olaVBzetIPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658476612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f751rEvHvG8Yl2dnfiDQOmGAgAdOH8q21AE26Ia5W4Q=;
	b=jDUrw3xvBA9x7rbT0BBowOdjxLFWaSbdwEOKyLgj6JdLXnDI8Dcb0Q1YurOQ4r9M
	a5a2WPpu81+pn9zNQBw+O+7lCsWTaMruAl3q94QFtKYpkp4OuDxgsCOq5pDte7CjiFV
	sS45epD0g9bSNzytA+vpLhHN5AoS5iEHFhqaum/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224e8caed-6e218cb7-19f3-4db0-b3d5-6090af7ca1df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dacb85e4b7690e8827706bb82c291f8c0bbb8c7e2bbdfcae7e7e87ecc567a2b1
Date: Fri, 22 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658476612
