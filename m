Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D6317D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 11:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653047519;
	h=To:Subject:From:Message-Id:Date;
	bh=V8jeqD+1ZZZtMxOB06jhhIkoghGMebnJb+9Hb5Vh+WM=;
	b=Qe8SoBxB9KQI+T2yWKMGf8SFF1uTrxvDIUboCatIGOHWZhFQs/dJW7MxUC+vGYU4
	DT+4/d5vR0uF6bdSr/4Rof1gCg3+FLKF3NEWjv21no9z1J7oeCnqkhdtiRC7c3rmJbl
	uypGJTQZTlPvMdENBRaV0y3pJaYWREuHnaSy4ZfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653047519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V8jeqD+1ZZZtMxOB06jhhIkoghGMebnJb+9Hb5Vh+WM=;
	b=QeXvb2dwi1d2gMEtROgw/3xNC+EdML+ERBfc7za1qEl7Y272lfvZzH+uZGJQSxbX
	Zq+anQmPDAzwi+crI5h6uJpKuZF8Okx8B4+U/k+Y/ghk6UCgQb77OVrRUBocLcjtTq9
	5x94vpw//G57EtI5gk1y+gzj0NTtqn8H8HkGlVOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e14f6803-05a9109d-ee40-4473-80fd-d99557315498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62f6c774917a115a6fa12fb5d1df32023e587f1e1276ad4f62228e5cda272607
Date: Fri, 20 May 2022 11:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653047519
