Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C82B36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647047184;
	h=To:Subject:From:Message-Id:Date;
	bh=Q5VHBKOBuD59HbfiE/1qkfqTj45IDrzHykfT6yrR5FY=;
	b=HnRwsWxkjY9Q7xjR8MVV4fPrZUdWOJpHKoJHpk+GiU69J0L5Jrx+zSoRKrSMxUIx
	qRCqWLAVpkgl7CQTIOBJ51gDGcNfM8SnC74w74QQPi4ErI95LeMsOtAkDurgGYm9US7
	q8IG2pSnm6+x99IEvLo+9BNZgSTCjynLrR7YAaBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647047184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q5VHBKOBuD59HbfiE/1qkfqTj45IDrzHykfT6yrR5FY=;
	b=SvR6ISI9UatCBRXTbep/vz/Kybsl+i5yGQ3YV6+YIYgIWlWiyAGzHvjraC36d8Fm
	HZiEADzOBb78L7TK0yRuycBrOEASwm58YjITq10RZ270l0vjXDSardoaLKtE0UN0Knn
	ZXNDGGS9CneEMm5IWWXoZ8/z3C+Y3CHK63WivbkI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ba99192-c8bcd2d6-c248-4525-86a9-d42658b6fd9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 989ef0266d18ba4ab46fe48d2ee66abaeb1f1b384c74bcb08dd03d3b97034f83
Date: Sat, 12 Mar 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647047184
