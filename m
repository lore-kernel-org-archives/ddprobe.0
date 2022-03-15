Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86423B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 16:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647360685;
	h=To:Subject:From:Message-Id:Date;
	bh=vyEqTlxBpB2KVLn+npnmNSULv8g0QY/Ds9CeOdtqg8I=;
	b=lLoLhrsUQL7Yrhe5GTkH3/kKzohZlxHxWVwogDpvQTsr0RnzkbSOWavIuQ9PVh2G
	n8AYUmewXN/cBCjguH4zScpMumyks8sSsu9wMk/5OjLzIzweNbFDbaMtBjXqTXSODLf
	vF6jfRO7xZsGQQPRJRPzcNwFFdO281vBgMgFuzuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647360685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vyEqTlxBpB2KVLn+npnmNSULv8g0QY/Ds9CeOdtqg8I=;
	b=JXggWWkC9hOwK+SKA+RH5zQObVg/D+/5kmF15o+3ihSXj5T3B3J8mwdzEaHl+TSJ
	zolRzCZ2FNqEZbX0mnm5F3HdNHX8D7iubXWf/mZjDPvW+aXzV0V0k/PePzfPIvs0d3Q
	s8rUu73W4IfmEbeYNNMb3p8u1zjkhn0E8t0JlpoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e59336c-9bd90e62-e37f-4260-a037-09848de3b6fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f06832dbdeb69f896c9f7b8f33bc17df3f4458158164a6158d6eceec59944db
Date: Tue, 15 Mar 2022 16:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647360684
