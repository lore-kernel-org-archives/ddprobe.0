Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8A07C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656137212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZYKeHkA365AV8xN1qSgcnhBZtRQhZFk9uQ8+74B2Bko=;
	b=gkbCBTzQEcHnoc1pOyTXmld5VYClhgDRLD2SDNyJcvFFKHlACN7G7R+qgvnvOYml
	tWi6f5+KV3oxPpbi+mOnMtTB5LcERDIhAAYv0uBMQsPdoABE4tKkklcv3hfpY9D6HC0
	FXTQ+mivKjdT/SN+V6gZqSkqNJ664sUvVo0rULDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656137212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZYKeHkA365AV8xN1qSgcnhBZtRQhZFk9uQ8+74B2Bko=;
	b=XrIgYc2OGgYOdAuV539RKF4MQJd6//opJ4nFGbd5SxuJ2wv2iXNTf5AfCXqUaON4
	KvYXqacO7XM/e3qg4bpvGUnE1s3jrHM/wJYGFz8ExzwqepWvLO5wNi4oNnBrurUfVUL
	Wgq99PqnIw1CEGuYZU1SrVFOsHEkIXsVa76vjwcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199786176-baf70d45-d373-4878-b9ee-342bbfacd355-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b75848d591f2bd58870f46f0527ec181b2fda0f3da42ae9c2f62afd4c1cf0d24
Date: Sat, 25 Jun 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656137212
