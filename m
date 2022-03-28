Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4E57C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 09:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648460518;
	h=To:Subject:From:Message-Id:Date;
	bh=ieWXgNqEm0ldqWWtdm9dApuIg1m0nDpIAwniZYQUfaI=;
	b=WvdCN4/bjhFKXygHiwwT0mf1rFbvbjxExHtERbRL+fsr7W+0ah66HZ6AUH/vM8Y8
	PvVcGi/SDSFBkFY5QjD/MrtOoHSC/ztAzEu2bzFnWifqTDU6GWd0dFo0nHChTKhHTfd
	3fQ6RYtlVOVylOGrq0L5NP2AzklqjwTWwsHqhIDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648460518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ieWXgNqEm0ldqWWtdm9dApuIg1m0nDpIAwniZYQUfaI=;
	b=NutmBiWhcALvWfGKfAuIxwb3YskGWcQXovUwXvwtmHEQsR5NRotp2mEHrKPsH8et
	u3PQJQUd1GJFR5XzkBROIGiUN/IS+G50jrbhzdY5qzDOXEKKj+sQhfG5n0bCODBzCj8
	u8jQyLq4wPX/zU0c8GUO5+uSsTm5If5Db8DTRq1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcfe753b4-66f48ef5-75e6-45a3-882e-db07d0b5867f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd751bd67a3ed0e15b188fa6fa99e9e26e961746e61b0e70c7e4ea307ca2a209
Date: Mon, 28 Mar 2022 09:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648460518
