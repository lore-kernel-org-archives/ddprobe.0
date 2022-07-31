Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3492315A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659245452;
	h=To:Subject:From:Message-Id:Date;
	bh=FFQjnpD9VCfs+y+7g7TecHH7dd/HORA5WvnIQCJCWLQ=;
	b=O6va2fx5HfvYWAm1mjpmO6i7p+/fD9EdWD4deE3JcJQTxr2kM1Peiy5n9YO6n9Ql
	AuRHzoBS7aIQ0A6TpvwDVNEg+XrPXUwvLwiv/ev3YBD38fcJ2KlP6sRHCHq5OYZZaLs
	9IEfw4ju6tL/6B59rZOia/njYdcAuRn0sFoyIYXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659245452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FFQjnpD9VCfs+y+7g7TecHH7dd/HORA5WvnIQCJCWLQ=;
	b=AAzoe7Fc5GB7UyEC47+4pJiiZxsotKzkFXD0T7v/plBDuJi2s3yW1BMTWv9SQP5G
	K0rH8iRAMNCph0Mj+kFFo3Oq+ASKSRG49r8oOgKZ6yBqr08Q8DNapccJTNYKzU+uOn2
	JFssA3y9Chkek4vuDhG8vMsHn39KQqIY+/uI5U6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252bc5d00-eb755402-f599-4aed-a335-a691ddd48211-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b59867400e73449a9b0d2c38255a77df086045f2d2c931818119314cb500a34
Date: Sun, 31 Jul 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659245452
