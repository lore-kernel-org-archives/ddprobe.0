Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEE07E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 15:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653060959;
	h=To:Subject:From:Message-Id:Date;
	bh=VShQaCrFUE+vMt58aYb7M7AQKQOkVCdTRatThkLNWmg=;
	b=cI6+z5EKV3bdL1sbhEDan9ulwgFMoWDoeHLsYJAJssHJXezmjSMyMEpL+ein53fd
	3JBDjv+2rt74ET6uz2FTsxR9IqEkNBtzdaJ0JGaSbst9bh5oCbHSYne2SZ7sWJ713TG
	qZSNfe0WG3boQZQMd3hESIwLzqtVq6SRPGoIXtEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653060959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VShQaCrFUE+vMt58aYb7M7AQKQOkVCdTRatThkLNWmg=;
	b=ctj3uNSC/sktJTql6M2NCopXHw6O6vtcG2ntmrfax18PthqYSoN1RmZlW0T3QUNc
	cM9dDy0FpV++6xmnsMzB44yCgRID0f1cW9IbCbL6TT6NvyWwuVjKN0X6oLj07W1vHBg
	fVAKyj/0h4lbwRY5Le/JrEFMlZhz3uq7Wadykg2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e21c7c2e-3b588d7c-8d70-4d82-b2c4-a42e2f294a40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1c8c9bdf80f3dabae5dc2bfbb69855afb151b825aa4e139f34d11d48e5bd6a8
Date: Fri, 20 May 2022 15:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653060959
