Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE457F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659485452;
	h=To:Subject:From:Message-Id:Date;
	bh=fxcu622sAEp5vNA0lBdHW4MTNlgQrqVvWjNtrqYOHP8=;
	b=jGQ9p1sjQErhr9lLDSIWh5oBpJ8cCwxiGRWq4/s9MEEACsQnx4KRBMMV7BO3TQAB
	HZ2NYF6RQPJaxO950BjFiRTEHUKoSZey+EfSRJevPpLu89ucGp27y10xR0xd0PMJ7qJ
	TNmkb86pTUIi6XepHc+VFJNnmWRl1CEfSpGfGOPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659485452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fxcu622sAEp5vNA0lBdHW4MTNlgQrqVvWjNtrqYOHP8=;
	b=TYdn6h2XqMVzuEEPQctoTPyAU/spOtNfI9ZCyuWth5XTXvFPASy09ddCi5kVbMXj
	1rT/xSWgcQOMEPXrn5S5/xDNdsNuwMNTphGdKm7w9ul5lyhFUZnGg20d0zTfBPfNgq4
	rNClAy0J7vLXd4aNrlmsDDLEWtfExY9HaQkk4R6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182610a7908-a04e1beb-8ac9-4103-92dd-b595072c578f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c9b0e85992ad8c8fb6282e5d0616263ff0379660d6e3b99d41a7c5928b653be
Date: Wed, 3 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659485452
