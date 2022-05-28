Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1050D1FDF
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 20:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653770399;
	h=To:Subject:From:Message-Id:Date;
	bh=pI861h40vzkqbio3C71E2jI5xXtc6PcBZUkB0bL8v80=;
	b=QQBLBSeLo6wqdvWAIeibV8b0gipcxnVUFdamZg3FyQncdalqlrwqxUZZEC8GvXK5
	um2ZGkGGP/dpBCCp6ZT6kVhj/3Nl5j6XSudW+3vaEYV5ipIERFQXd6JR/s4JLHmfxUN
	WD2/sLoACIetxK5V4jf3Se+VR1Ef3s489qXyz8/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653770399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pI861h40vzkqbio3C71E2jI5xXtc6PcBZUkB0bL8v80=;
	b=a1Z9QfvfEe66cYQOPM69njuz0eHWcLBoyhMmK+xpVPKy9p0KVrdujfEc7q72ZjAx
	RCVo+VriT6JDToB4uu9dKWd6XdeDs3xnX5anVdb9Imw7PnU7VQ1Y/qArj3PFKxgm7RC
	7hsLkxMVc4OUQoZmSrhuenq2NV01coFQZt4NMzXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810c65ae2b-fd9d0897-bfe6-432d-81a9-ed4f30a53f69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d85a4518f4c9c1c6a1285ab82486baa5f76cfe8d9bd47b96454a1595e70a286
Date: Sat, 28 May 2022 20:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653770399
