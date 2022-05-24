Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29505628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 02:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653359819;
	h=To:Subject:From:Message-Id:Date;
	bh=XYFFBiRfy4FvQZxdK9rCI0CJ7DvlgYYZi7BCba4fAi0=;
	b=T5vswx8ffU/mA7xU2UW+JWYTNXzpF5FuxyxWjQWw2JaMca4oC/M2XVKPV5MHECnD
	Fqk4YdgX9E07uEv1JUgQRpnpV8arWQudFLA8aiwV86HUWFK9fgvyQeGVC6uwYQOFPj0
	GeYFYo8yHAjGQN8JHQmw+vgzNiG2C90pKAOL6gCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653359819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XYFFBiRfy4FvQZxdK9rCI0CJ7DvlgYYZi7BCba4fAi0=;
	b=D1MnQn66CeSPJjJmqNpvgLqbKH90amGqAeD1WTuwSHfeIhHXDmZIt4YsyK9FeKYG
	yvpEA82zv7Wdpq3Z1P5X9h9l4rzwOpmd4gZSZT1Ma9oy99Pe2QnZ7MAekxHr1OcjXPd
	puKV/oige0xUzYNFRJaCfGnKY1zYlHC80qsVFkYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3ecba0e-f56ed6ef-c649-44b5-82a7-af3c0cf33e65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f456885e8ce3e5ffb26a5e3165421a93fc17ea8aed65f4cf719f7d8bdba2dfbd
Date: Tue, 24 May 2022 02:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653359819
