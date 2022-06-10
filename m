Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A70362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 05:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654839059;
	h=To:Subject:From:Message-Id:Date;
	bh=QLlsNvWHZkazsAAejyci7kOEs3A+mJpRhJzOw6aHRZg=;
	b=BqNDnOK9YBshI5WK8lm4W6dAvgee1pArnaNA8Qc4gHlZ0HygSwn1JMfuq9v2RBbS
	fnZOkWe9fXOBPXGibY7GbrD6sMQVuzN/KWZ8W0A060envIqAgTbDLsrwPYFnjzsHhe9
	FFQyG2xaUz3TYv+iTlGl+MMeObvuFwpf6u355HO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654839059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QLlsNvWHZkazsAAejyci7kOEs3A+mJpRhJzOw6aHRZg=;
	b=jli9pNMf2IT44yjDqO0sUXzmpJhaytT25G+DWn9hqWjvWQ5ZqTOJGxEkv+n/mq6Y
	yRafaOlYoEYf5xa5Klgyu0gpHP/t4wL21kj6wVQlNuB7utKEyB3XAA9rMPxOIRhnS/U
	oNcibhR5y/A7cLKUF9NvIPkQ9fBCZJhYAHyAgoYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c18232b-b70c4f66-a587-4ad0-ad02-12b0560849e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eee1984f82f5612b58123ce3678e10e1dac664fb20bf210e32ea9137d7ad8291
Date: Fri, 10 Jun 2022 05:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654839059
