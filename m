Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE70F4690
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658422612;
	h=To:Subject:From:Message-Id:Date;
	bh=uIiD+mU39uuWpxuKv5Eac8hUBJK812tloW7mWgIsrT8=;
	b=QKCfesnHdnz+nGQYFlHlnrqE5zjLy3MiBVj0SMeKizcG5D19Ux+VxS0bd6IhDN2z
	0hPvLkaGEU0LI2ObL+Nsm/iyIVbZZHTAaBLbiXjOztURBew4nV8GCVaG5DMu7dLpFeg
	YyZFJMF1D7wWTNjPOTB5HA9/BaZEOOzmCW8zM6SU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658422612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uIiD+mU39uuWpxuKv5Eac8hUBJK812tloW7mWgIsrT8=;
	b=QRMWIeBlG/T15rvgqAXzYj6V1AFVN+FQHvUWAZi6KtwxMQDkj5dbqtxl+AqWAO33
	HcqaGotJaZeFK+fJsQEJKNMjq2YiZT/Cve6f600nSxzKFulo17Pls0zXWGiIjTPjMPY
	I+I1h3eEe60h5dlzpBQu2ki18s2A9QHI8t53wrLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221b0d10f-57d237b0-a93d-4cde-a7f8-eef0d99a8b88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5dae64ce3a8cfa82c2091a719f304d76fb414231df2f4856b583e3497873f73
Date: Thu, 21 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658422612
