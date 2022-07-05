Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6392F2D
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657062412;
	h=To:Subject:From:Message-Id:Date;
	bh=xye7RcKTD9Ngo3w7jkpXVEetZvqklIDFSksgqhxXHEI=;
	b=BxiEpaJI7KVRQUf3Hu3sG1rDsNt+cZ5QNhLeyBmPWQDc4ISSOXGDW6g95YGJBuh0
	GoZ+ipjZwuCDNo1TrNPjeW30yZhk8LFw1HDbgXXWe1SW45j8TpfwIjcbWlCHdYosn9G
	Y6+SnD1Qqt65MXoRB/UdwjRBLQOkMIxSU5gUPKIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657062412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xye7RcKTD9Ngo3w7jkpXVEetZvqklIDFSksgqhxXHEI=;
	b=Yni6q+YLvbHJ79igHo9DLkQfk0F4FwxmgyD5GWu2yHgZcu75kHqHQnNo9CG+NZJh
	F4zIAy4XaXtJA2DGF9UKF8a2yDm6EAvm150F9NKwLjlYjiyZnKfxaFqjehECw+xChMe
	5bDhxGgt1IzvS+hEyKAWKFm8ntYXCFOlwQvkZ9z8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d09dd011-3d4a0d8a-5d86-4f57-bc82-3980504dad23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a556fee733e2ad3dd6d17d68a8862a7be5b0f7da54d14072d43de9910b562640
Date: Tue, 5 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657062412
