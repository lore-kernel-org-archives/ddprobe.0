Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E1917C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 09:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653039419;
	h=To:Subject:From:Message-Id:Date;
	bh=SoTksNC63oZ6CU+ud16bCYfJzQpYAixCGHHNeMp1tY0=;
	b=EEUXpuWzWzVYqNnjZvOxTQhvtwG0fceVlDH8BYg4kdbD5SaP1AW/hPwKCaK8FQSD
	7tzB0UesW40DYbMiNvnaitw64+h2XDnUw8zkIF/D6ZulrHu1SbZKW6Ydu/8jadTUP8D
	bLUPoEoTsB6Wsf2dYYwvoGBL6/zjraU4KTOp1V2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653039419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SoTksNC63oZ6CU+ud16bCYfJzQpYAixCGHHNeMp1tY0=;
	b=Uq6i42rrpSpSDf0+UguLYy9xB6KXdv7VUZXdbYZ0fxIesYWAM+2q2IMA72+pYXdy
	Fo5pILBFo0dfUytx0Iuotjvp5h7tK+V5WjsKB0TlMnzaojiA0Fyw7+H6HepJURfvN9w
	l9XNrhI/B1393Hb8ENClQEz3mjHZbxYT8RKTOKoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0d3cf6b-a3f7ddb4-b741-4d07-96c1-dc2ab626b3d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e526ca3994be7795fcf1cdcbb2dae0ce24acb5e602603678ed94495e7cfa3521
Date: Fri, 20 May 2022 09:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653039419
