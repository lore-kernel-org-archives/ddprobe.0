Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12E4110C
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656737212;
	h=To:Subject:From:Message-Id:Date;
	bh=EWDCnGZ6BIhU3ip6UnWMjuZJFoNVTb3l4XhDa+Bxv1s=;
	b=X/6moz9UCW7Ssz8noXMU6kkXlbf/DWh88GIwCYw7nKHfRiM72pBqCaLCwOgtgEtv
	1ed/zOvcdQz/HiAkQ3Vz5nkvMAXcpVfoUT3tvdK20rUk5AQFvAfqbW0uzcArSU1C07N
	KAwQrG3rX4EaokO8bIqX1cHKwoqZwNsSgQxSi7HU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656737212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EWDCnGZ6BIhU3ip6UnWMjuZJFoNVTb3l4XhDa+Bxv1s=;
	b=Um3GQczy2aZVgi2DBLGO4q7PaV+/Fjiq3/s5gdVTLpJWG/3ZnRjnO/jLLJShAGkQ
	wf5B5zvTmIzog7/6QGF+4Q2ZxbIZ5EepZl9TQtM1umoJZRxnA/8cJtBHTZVDxgmuco8
	r5jOuANIXTejDU55meKeU1ab5gShTZQrcxEoqpOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd3ba789-de211b70-9601-4e48-baf0-0b8cfe810720-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92c1ed6971a3c025f7d85601c0c9dee28d21aca0368f0a10fd3851144a41acf9
Date: Sat, 2 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656737212
