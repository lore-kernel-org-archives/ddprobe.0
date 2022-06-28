Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1894624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656403012;
	h=To:Subject:From:Message-Id:Date;
	bh=AARWI606TQGvqFd3Z5byUKxsNSgfiGailosBiBQQZwg=;
	b=Hsxv8Q15talpXMPTMoX3/WvLI1ZD3tK3mqDeSzxL/qu1sYOyTEueX5Hjc2okRKmA
	6q7L2iAzz9TQ+C7csvlCauVDUhVUWZdXKftIwXmaIhRJ/GSM2njCmNeC4bKZb4Me5hr
	dyXgWLzYUHbYKJr12uKAfDUgatBp0rEWrriw7BXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656403012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AARWI606TQGvqFd3Z5byUKxsNSgfiGailosBiBQQZwg=;
	b=cuNrUZ+/czNAFR8w36rwLjYj+Vylyom6MWZ1VrpBmcY2xzu0abS4nodNiM+WoBmh
	NygACj9qw5H7Dp+huESbCz0U83uVB/iWzNUTgvT8BQwhgHwTy/T4IlPTpTkqOx/1CDF
	di/uLD2vnjOq4C8hUKkze5d/6E7eXOnYA59EgRj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9502ad5-96921a0e-f280-4d4b-bd85-30023d5bf1b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 734adecde1796039039bde98a8a7a33748e4377965d57e6cb7e5f5ec283e912c
Date: Tue, 28 Jun 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656403012
