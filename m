Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC3B2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647480684;
	h=To:Subject:From:Message-Id:Date;
	bh=fy2CfbTnUaR+/JDrqTO8LmF7mvnja3hx/pnBBN+NTMQ=;
	b=MXUec8VG0oyzgtoxzuS7dTby1J+RaSyfMO9oOtSFkQMykYD3vrKDgWrhXgEM0otq
	hYM10KBU4FplZgiHvEKYW6t/ox7D0TrRHMEEc/wCGgUbFLwwFANnjSTmuofbg8dEHH8
	C0u/S9dBGBCMaezgDfUMwXezEyoxbhiK85NJFWeM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647480684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fy2CfbTnUaR+/JDrqTO8LmF7mvnja3hx/pnBBN+NTMQ=;
	b=QNmfKWduN8elEmwvJS0uIGoL69KZ5tfQwjPEYcbPG9V3wJHjxa+e6CFRvFSTHH9j
	FqHqdXYasa04MoWZFzX6ms3lC4m5d/sP85qfEMvwQ3VVJPHUSSxnyfyOWOPmcJJSxU2
	tXbGyDd6ZY4odqUvVfnNUEUBRG/RdeqW3xiBJkxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9580412d-bfd8cb9a-f5b3-4a76-aab3-d73fbeadcb2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8384c0ff3ce81a6aac80754d3f2e77a6e6526eabb0601c2cb144d6a837dd3086
Date: Thu, 17 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647480684
