Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13F0160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645362085;
	h=To:Subject:From:Message-Id:Date;
	bh=IqTdNxRuJyHyirbhAhv9Bcnlhk1ZEpO5j63dSS0JTZ8=;
	b=Y8vgVcBkEKriXlR09ca5PVkRMM7JxSowtYoPZRPl1UqUikRtra0tXBFdiNabxeYa
	EfNHdA7+CfZkUChNxXdVeTWjWGTijZbrQBMyNig27XOZthdQFQGhPSHPgdiZMfvziwR
	Gb2M1l1D8PoEAc+iHKubX7GIYaEBnqCscl8pucf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645362085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IqTdNxRuJyHyirbhAhv9Bcnlhk1ZEpO5j63dSS0JTZ8=;
	b=FFbJR+2VyF0afrthOYIp8oQHsIkl7BtqKy9xWhGGbr6NXeVXUlNP05cXbYM8tWKO
	ICbGb2UjB61BMiN8ViqB/eS7g4d6zet3Tvao80iMDY4e/nlEzRiu5r+mDvR1xxG1Pgg
	xhF2tlsRIehqmo4x/goDcJQ+XDsoPlcE40rPe+uE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1738fbb1-6b0a50ca-54a4-42b4-b638-44aa4e650b84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6887a5a256e7a68ac1c5df48cd581cb75c1f47f614523ef9d9991ee0f4f41e4f
Date: Sun, 20 Feb 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645362084
