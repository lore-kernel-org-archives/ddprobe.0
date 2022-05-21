Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC59A17D0
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 14:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653144179;
	h=To:Subject:From:Message-Id:Date;
	bh=n6KiMBKDQt7JHhc1yEMW09K/efaBsenwxbLuj9JMvDk=;
	b=Lp0AH5Q4LkTIG0KCgaPbdXYPPr3X7pPisq6Ox7R0+6bvQST3k9LCso5mMAKFRXoj
	jcTzorgKI66l89thsPLC4is+cy1wO/iTY9jlOKCmvwYt2n3IKrRE0duvEKu2kTS0ajk
	TTPAUyKdT8Q50W0EeIC3rdLqyojE8HrAwCjKYDaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653144179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n6KiMBKDQt7JHhc1yEMW09K/efaBsenwxbLuj9JMvDk=;
	b=EJ3TTj4K7H6HsMoWFQ6fqKfrUNldNh6xByMcWwwpUllDUpa3m5PXYssBeV+28S3n
	FoKFvMtT0AsRjNXz6NZsCZXVU/SVWQLprtTargfoYDpCU4XttXtD1jzIcOyAb3ZIpVl
	/PU3w2b65E2NhtTJTOSVfmxntT7TYYg/S0BqRSbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7125240-ca227df0-8a64-48cf-b3e7-540bee5d951d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f037a92f0ac66b8a449e1de22eab93305fd88e49cad698716f7bc975a04c625
Date: Sat, 21 May 2022 14:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653144179
