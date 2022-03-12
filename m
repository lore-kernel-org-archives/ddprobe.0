Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746B67A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647128184;
	h=To:Subject:From:Message-Id:Date;
	bh=XvO+9HsH7oO1LhRJ0r+CWLeLcIM8vElwcowqG1UdiFI=;
	b=Juk+WsuNAlXA6AvtWejI2hzCWfPxgvWuEGHupo6bp/XvzFCtTq5xFWj3UbhwRz4U
	H5Xarj6hFf3n75nSn9prUjhPdH7gAkWznDSnGOuzT3FIe1hI7QQHmcL4fB0mLQJKcsc
	LL9hDcp1o2KtNPrET+fyFRYpH7aHcpRHiFES7IdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647128184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XvO+9HsH7oO1LhRJ0r+CWLeLcIM8vElwcowqG1UdiFI=;
	b=X4vDk8ykDuHH5dTO6Edpa4oaA7JFyVNagjfN7vhh/QcBrh0Scx8IcG++x2vSy3yo
	BEngxI/BS/06jEycUb6IyEmhrvgsWxcY8uQ+35sk5snOQ3t0gpsCbNod2DFGormoUO6
	iFrhUgOeRUJmllJJ0HPT7dLpXvZ2oJiOyzHVg+AU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f807d87c3-bc4dbbd1-cf26-4944-afd0-dc7a7fd5d601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cab7d3afc2ceac1935a8ffb4c571ef4745de537bc1e22839599c114d63926a2
Date: Sat, 12 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647128184
