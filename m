Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6EC7FD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 10:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655807819;
	h=To:Subject:From:Message-Id:Date;
	bh=yHviD67iDKZUx6lTaxtsfGEQzmimIcLv91bcJB+WcBI=;
	b=PiuJ9g61a3XHY7b5stzrNN2xtdwNXo2cRJBqwpc/b8FOKIEURjGQPMsx7cEnQW2M
	ccpZRb/OmA+ogsy8G0kfLldgcp9DZg+EWcaExX32s0Vyr7fb5RLzvv9PgxVymUXfke8
	gZZkjZsYcK+/SI3xRoO7CIF+ulLB5rLKrqx+qQmo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655807819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yHviD67iDKZUx6lTaxtsfGEQzmimIcLv91bcJB+WcBI=;
	b=jNLdGFfon4tCUlAswtznvi75ojFYbiL82e2K6JkhP0K5sJf1h5R6jyI9BY+/Nvbo
	4KyRgVXIv5v6ujWuZ3oLCpAVc1nE6cxgnC/sify8c3uCPe23bH2hP/yJY5ZxdEp5bNM
	lIcobJkO0/y8GcGezC4xgHbZ/k1ajP43gsQdi0Rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185d63e07-fc6bb205-2f45-454c-a891-6c1333b45d8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f747e46f20ce3e9160da7a7f6205423ef8d665cb82c1c57bd45fa48578699647
Date: Tue, 21 Jun 2022 10:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655807819
