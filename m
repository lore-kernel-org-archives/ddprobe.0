Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE84A5B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 07:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654242779;
	h=To:Subject:From:Message-Id:Date;
	bh=boOhP7Vbae0yrELwdLvd1h+DXGOvJ9A6GtV8wKGT13g=;
	b=YkX5LULqcHLXaGK8qDWY8HdXdW2A1FEdTp9nWtYa0oqq581Z0WQqfsGXbilDiV7N
	ywsLZe6C0i4UOHI/zjX7Z5wdMJAnFuqdKGIqCvbCnejR8ePiJthVkEjDbuF6uetH/77
	y19DjOqKr8Gr4Avu94MRUyM4nFwd7yXzEbwnvVgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654242779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=boOhP7Vbae0yrELwdLvd1h+DXGOvJ9A6GtV8wKGT13g=;
	b=JuzcUNqhsOQ8eKYV5/HwENiUhtZQ/pRZxzIHL5FYd8QxgeHmhJws0xBVD73KbEHg
	KYhKsZlSHdDFK8FfUZ+e1sH9v5DsjL8p7YCGI7SdgQc+nacgCYwoq+76pZArFuWz9cT
	2PMWrs4Tmp3O/X9saS3LHRhjRTQpCMljHfIaSnho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181288da090-fe89c1e6-47b9-428b-83e2-6d09e8547dca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04b7d8226ef7c9e799e69a1fe732bb3a736e6d5657fbe5ecc917565f5d9b99d5
Date: Fri, 3 Jun 2022 07:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654242779
