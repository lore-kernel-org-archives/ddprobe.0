Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0429D1FA1
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656750412;
	h=To:Subject:From:Message-Id:Date;
	bh=z3NQpOk8Z4ooXt8eEBX0d0lSl8hnpj9UtzrBTgPI7qw=;
	b=Sf3kMTIU0G7FLqeeBMMrmuYhYbP+StTUG15yOwIfsElS9n6ohAZLQknabFK1EK85
	N7CLHhdQ3wZWMxOX25d0Z/jzzQGbNYeJPhj4N9QyhoH3jOSkaGvH3nec6Mc8A8rlVob
	fgLENnzCfsmhXdwsWU2Lps4OyWMNRHxP9qgKK+7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656750412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z3NQpOk8Z4ooXt8eEBX0d0lSl8hnpj9UtzrBTgPI7qw=;
	b=ampK1qLR1N2LYUfCYfUQkHdHZteXnZ3Pyy33n+9p1DaM3uvhlvQt1SrPoL5nw6/b
	Z7uyCr6p0q/kVTOXKfLOxWTxgNkg22LtbOPh2g8pf22JFwilBgHjPXp0+DTuVOxYo73
	yL+spRHjbrMIFoy1F5l3LZiboOSs5vm7ZbIWwJAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be051246-d6aa6b63-22cc-4c06-9d61-ed03a8a4ebd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9602118a4c63da7f554cfbc7866827007b7b19e3976f08b5de4d01899b091b4d
Date: Sat, 2 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656750412
