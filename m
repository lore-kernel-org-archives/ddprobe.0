Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30617A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 06:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654754699;
	h=To:Subject:From:Message-Id:Date;
	bh=+8ZveQ7Q+z3klQ86Xi56VvN6702iZgkN/gbxCBX+twc=;
	b=i3SfU6gjGQeNcwZrdl9KNMCu+qxPbCGl+vqiibIIe8Ipcs12OB562UT86w65wRU8
	AYTXY4p2LjdHfkiuTts7c3i5BmyIDEkGlCGaawXJQrxEA5tAevdsNlHdh70Sc/VfVgN
	1ODRpRnFIyI9nJspVuD/NBdYlvrWMMkv3uLZv9tM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654754699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+8ZveQ7Q+z3klQ86Xi56VvN6702iZgkN/gbxCBX+twc=;
	b=Rs+vhVH0u37BEZiTLb3+Z/d01mJOVE/oRDurGoY7PLRXxBAbh+hD/kqR9ezstJYt
	rp4bF+8bjKm1A7VpQj1WH5cCJVVxxI/OA8tQyZbIDNXk/HR5yABzFWVI/gZ5qNP8lxy
	eg/0QcJdscZpW5sdqjUgYL6j240J665XtY2Hqs+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814710e7fd-b0d10e8e-c1d8-4146-8677-8349feb23907-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6dff72cadf86eb124c48288a4579f4a19bd27818bfb4dd3d76ed824e29552a5
Date: Thu, 9 Jun 2022 06:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654754699
