Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C3F7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656035813;
	h=To:Subject:From:Message-Id:Date;
	bh=cHjPIM1AFEf66eIVETfjzIzQohLak4iIRWASPUHS+BA=;
	b=jqiJoenKrc5cu5m/VcIOoa288hsrzyNyXKzApj1+SBdOdP1s6QSAk5Vk588jIEaS
	aCVrZl6SsA3B54BJ+G6IO5hWjLnIBLoR6r+JExLQM+7UdnTae61feevb/UoT7GyWdIT
	5kOuqIXruuVwf/ORmVWI+BuuedndPqj3Un7OfWOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656035813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHjPIM1AFEf66eIVETfjzIzQohLak4iIRWASPUHS+BA=;
	b=fkVoEtC5duHWK8v0mcsMz0WurY1wSue281d13hYqoC9OIYWgyp238RnqP7BFqTT4
	YPG0/iNmNqtGItdrA+ORAhhQX9ELlm57rw2Ei6MjMUmcO/UHOmz0e8wN9EmRfk1GoFS
	CUhN+NQVEvOrHDPY3LfcJ1/t5yqScUGSxxVHFy1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181936d23ca-78cd2b2c-c100-4022-a387-77c4cdc55eb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b053fb73307336563b2aae18ef666ebbeb0e6f24ce9c833125f202cc4cad1b36
Date: Fri, 24 Jun 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656035812
