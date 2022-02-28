Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81AF7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646060485;
	h=To:Subject:From:Message-Id:Date;
	bh=osMizlZY7NHqj6SINVTAxID+6E7XydKDmYIyMoNRRNU=;
	b=eqDERBCcbAZDYF7ImTRvX3Zzud2a8D4YUOh7QCowM1WadVAJtkwRjuOuWgOr6P7D
	lMBL16WmXjysQ77ZGmtgyDhPTxbkfi1bl6QQ28oh/QnEOVZgemh4PL5AMM9TqDOT9EO
	KHMkay2PcctbLW930D0V3cxsGp4sQA/SLQxetJ0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646060485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=osMizlZY7NHqj6SINVTAxID+6E7XydKDmYIyMoNRRNU=;
	b=dgG40+7PicV3rDcfE89nTHTdJCrrPuPj+KVKu5TWRkRmbNu5lHRrqG7aXdhEyaV3
	OWlRJ0IcLZjCHmhDpSv3wkOH13OwoXh0r+OX2qv5cE6NVOql7gmD3zJeD4SjBbn/Y54
	MBhZOUGE+g8Vss+h4jl0X3TM3EtJ1GhD88H9Y1HU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40d9b8b5-cfaa4b23-d59b-4d49-810f-040750925545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea9e8c924eecde177a4d4cd38ad6e15cfaec29bafbf011340e4ff7f0a39060dd
Date: Mon, 28 Feb 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646060484
