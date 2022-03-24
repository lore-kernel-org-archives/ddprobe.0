Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CE71FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 15:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648135258;
	h=To:Subject:From:Message-Id:Date;
	bh=FXwkUiHrIpHkooxCm9E/NGatetJcS4xh6qWqzC1zxqg=;
	b=GQyH+HNW85YO0J1CfkbsQRIc6yIPMEMVxtPk4IXg0JVgYYk0pJwJb/JSdjwyoLHR
	6+s1T6PkBMPswgF8uShDezOMP4JCT6t8ytyuLdtNnJ7qHyhL4zIuEFbLoMnLLUyCYbT
	YbT6Jnf4nT921MOw3IgS6fsqIUWcGoZDhwNOVXzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648135258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FXwkUiHrIpHkooxCm9E/NGatetJcS4xh6qWqzC1zxqg=;
	b=JcNLaWZZrpKGFQAd2MzwvuarE2bXfxBc6sVRJiziay+N1WLB4LfKpPOiv2AnJTBF
	n2d/Cyev9CXaUoKRQYJKlWOFnst13S/UwUH0P98ZE+T2rL0Ayy1wz4RGOi7Q41YP2On
	E67tG02M0nis5Zor3OsRHRRbNOAMkF+zU1SQtlME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbc8440af-dd7e687f-d748-4571-b33d-cb689ae4c1f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7325e4aa4e9f10e740cbb0e4ebed9e3808514973cb8bd95bcde390150d56dfaa
Date: Thu, 24 Mar 2022 15:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648135258
