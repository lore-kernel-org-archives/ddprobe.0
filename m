Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFAB614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647118584;
	h=To:Subject:From:Message-Id:Date;
	bh=srsIVViYp9W3GD/oZ0qIaETy+Yz+NKbbTGwk25kmC54=;
	b=HABoEF4aHPf1sW4OR2uevQ74XFP/7jTuC3b9Uqx3bfMxXpRfQwfBdEDFkgVpWM2m
	7QcZL0Ky9857RGHJHHd6pScEMOmgWZT8HIMp++zyWVRf0YKOPBf9t5SL8FgFbN9uCPP
	BFQDgkFyJGG4jL2v4CGE+k2SrnIMGE+O1/4xBpx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647118584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=srsIVViYp9W3GD/oZ0qIaETy+Yz+NKbbTGwk25kmC54=;
	b=GK6UYkCyZqxLJae149R2RkrOYWSJ4zGaoHnNfo5fsLWhZnjI0qeu52b8QDG+75qH
	KaHPJa5H6vPWTrZn2vz0cRuV5XOU9p3cPrqvR+o8AQ/RiuQPiVMLF/xHSlE9VRgktJw
	CxHuR6k5OgIcnN9ms1O3DPLtl24402nlY3TlGIp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7feb0baa-b38bb9e3-6ede-4004-9d71-86ee424a7c9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 291b858b8c42aca87a233fca7ae3588668095ae23e36d89613f5c1c39dedf108
Date: Sat, 12 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647118584
