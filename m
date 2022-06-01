Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB0D63D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 12:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654086359;
	h=To:Subject:From:Message-Id:Date;
	bh=/uuJ9AW4WhIdvJ74eH5snhALjLAtT+YefsaRG4U9hTY=;
	b=YFRVgC6lEXsSCpcH0nCVSYRuvZjtET1PYyTZFdh4JA+hwROmh4GVgVHDk87f4o9z
	PTfyVLEGfM2uwc3akx2EVL/pNyLNqXqJZdPAckPzD5rdEEVNHfq8o9/gcmRa565d3Gy
	38cEdIodOXfX9FBycpdBESSTD1KVdLyKCqRx6mKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654086359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/uuJ9AW4WhIdvJ74eH5snhALjLAtT+YefsaRG4U9hTY=;
	b=BZrVoDA+Wvg74DYdsR56zxwu0huidFgJSVuIYI8cSNNFNAJCzh5c2DVf9WZExKzj
	4DjqRqsSsELQiaI2LwfJ9NOyRJjnAUIxNAv+7m3KgI8eLcmpeRrOfACZLHwl8dNZRtN
	+BrIwZBNIBDX0wWlz+8j6xJDGxUAdd8d51jKH4oU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f3ad90b-81374df0-0e0b-4062-a2d8-0741e19f09b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 677b41393056f6da215117e567216a4b6b787aa092bda8761a86a74a628757b9
Date: Wed, 1 Jun 2022 12:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654086359
