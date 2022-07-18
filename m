Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530BE3C0A
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658174212;
	h=To:Subject:From:Message-Id:Date;
	bh=o2cMdmW/sxeEREW+A5S2gSSXTg604MScyYL65CTzPW4=;
	b=ODjFdId4sC3g/bQxhHJ0AJF6EH6Rf10nO4HqZ5G5qfzy+dHrdgyf2bvyfDpIjie/
	BxHYqhk8jq/TZQKq7m5jrxHjyrSuKOeie886bzUSg8j3ed19j9BncAAx43OBS8eHHDi
	JD8RMPZsUjUVvKyh/Y2YQ7wZURddtZLRwfPIRwT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658174212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2cMdmW/sxeEREW+A5S2gSSXTg604MScyYL65CTzPW4=;
	b=TLXW+cNBqakt4ibAbHBZcpkNf0pL3TJGgV+QULbPxyMxsrNSTwF+izCo9KYCI25z
	JO1qRx5qBStcWaaoUIFgiSimlpjCUKOcfZuUQyGp7fx+SxRoqX5FIaPU1CCkyovJgkY
	IKX37VrSg68JOLcBxwSWL6q97FzooPmCBbrBvUo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212e288c5-6bf1f1c6-4a22-4ea0-a645-658d16eccdb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfe196ef02a03200d3ea90e4fe50eb770800ef4723d50faf319a933691e81003
Date: Mon, 18 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658174212
