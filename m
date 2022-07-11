Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A12F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657575412;
	h=To:Subject:From:Message-Id:Date;
	bh=tzrZEc2GnlZW5JdK9KLF0aU9VRZPidXPyCCiH1yuhuw=;
	b=gYlChss+0KfBKJmKmKHTkgHxoO/TQI8QC/e3RYxVVcUk2emvhYfNhNb7R9k9uW/c
	cDvca9jOeJt8hCphf7cMrgoz/SjXO0PU42eP3cgapV/vMMgU6Tx/TgFe7Xx4PEO1gef
	zMNLxSatsKIa6Rrurc6zbvQOp7pXs5zOlm5xd+Ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657575412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tzrZEc2GnlZW5JdK9KLF0aU9VRZPidXPyCCiH1yuhuw=;
	b=deyqaIO11ZfDerCNzEDq5vksjq1XthYs4JBhohQRNHbSdvToTglu5sUK12mvtkYA
	oScfqGuOGhAih4+vBbA4ycjskLff6oEqvGJnPLiwihsixEUND96/oryWYxKfgegXsyZ
	Bwa5LicIpc9zZfvonVL0qIG3/rqixjpAoIVDP628=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef31926e-aacc6f1a-a8e6-4df1-9316-207ebafcccbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0637eec8549441f71cc0e2592a49c0df40db889c5b0003d7046d32186f0617f0
Date: Mon, 11 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657575412
