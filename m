Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A6D321E
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 23:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653520979;
	h=To:Subject:From:Message-Id:Date;
	bh=+xgQofk2+EtGTe4FkKWPqD0QdRTZiJ+6BQh8LFK3ffo=;
	b=N+Q5dwcfIIzKnrbvjNYRBRQD4Q7nve0N+Wv+6FC7LOfjpyM6mVKl6Io9EXxlqgAB
	SfNmcR2hCEgFuWp0DpFlVHVUG8XvcVs0yCXSrPBs+/0dmYc8hBeWn9128uuuz/o/zHW
	IghyvClhOpLF0A3/qGANC9I1TTeOBNov1ILIH20c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653520979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+xgQofk2+EtGTe4FkKWPqD0QdRTZiJ+6BQh8LFK3ffo=;
	b=XeXD68Geh9ZgYJE94l9R21MuCHDEzf5zx8MlG+ta1e22YoahBmWQeVRdPDZGfk/W
	AYNlmYTKxiipqLzL+fSgRNI+iw0Fc+iZ/5R1zDYWdz99Enjllq3K+Y8xj0FGTBgXpEO
	28mIGa7oEXImkMeCB65A07LaGN9IXoq4NJJg0YHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd87d51f-ac1d5e12-3e2d-4a50-a33d-ca5f2d5c0ef3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c77c8bbb0937d242d71fbfb4d5c0f102fbdf4421641e888a4c5f450f12a1b926
Date: Wed, 25 May 2022 23:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653520979
