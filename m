Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD587F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659428452;
	h=To:Subject:From:Message-Id:Date;
	bh=2+4JG1gRZPb1H//R8Q9hb3+bW1kCnEL/FN7Aufi67n0=;
	b=Z5qez01i9iT7K3EYV62rYEaXvmfl9D4lrdTbWMUOigbwzf//64pAKd0wxLV+Jokj
	ybDT1vvtFyUBEo0z0ajnwMl35MNcf+XCSrZ6QYizZspYqnXxBF4GVtV6NJyDns3aFPm
	tFieVf5E+6OgIbfWxGbn4lVek5cKGQwQXXjSqFXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659428452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2+4JG1gRZPb1H//R8Q9hb3+bW1kCnEL/FN7Aufi67n0=;
	b=ikSTsCHjJOZS0dfEBXZbQIE0u4RbjGXtS5CduZ3oK8ycxiaFpTg3o6pdiVY7HZM2
	/v/pDx++WsJVmxKs4eSa2sfdisSlSfUIFmPOqubetPH8yeSZ7CFPI1ZVIRqYc1qkGzw
	r4YYJ7TwNDJmre2cNug467jivuU4XoftyThtz8f8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825da4b8ff-b4ab78a8-895d-4ea2-a01b-46c8e4870a1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 994dd8f33c7370ffa493ce5ed9d7dfd1f1afdcf9b792697001291c799e95351f
Date: Tue, 2 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659428452
