Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14EC28E6
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 11:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650627238;
	h=To:Subject:From:Message-Id:Date;
	bh=zp3tMcH6HPSBwuh9krDmptyQhNkvzVjtXYkPRaKe8Mc=;
	b=VZ/UdVIlIu01cpb2IHnDkTcqmgNy3s9hj7MbKdIsW9TtMQMknM+owSkwU3xYOnb0
	5hRl4ORd+ACczTEF36X4WM7ycMUVNJed0jOTq/3S4hXwLuUl4XPDXMyUms7gcRg1KHu
	BQGPx+z3xZYE+llBCZR30G7Qa7qbl9A/QNKk3ggM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650627238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zp3tMcH6HPSBwuh9krDmptyQhNkvzVjtXYkPRaKe8Mc=;
	b=TDLyR10aSiCNJkGr+AjA3TuiLbKrpMsCesUWYVXwNvmfcC8hI2NAQz7p86XN0ozE
	0A7e3OcD/wOSuUUNz1BmxhEZvtLQMhRnmwhIknGFoX6Cs7oZPJei7F9V3MThR25y+ii
	itg/3Ag0vDHcWbWuq5AoOaGMJDi4V0P7VtgKS0bg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180510cd93e-95aef944-421b-4afe-832a-3c033d17960d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d73bc2fac3c5a61baf8ea722e4bd94e92b7e812623a2ceb40346f385301a5b47
Date: Fri, 22 Apr 2022 11:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650627238
