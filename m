Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F34F10EC
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 02:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653533819;
	h=To:Subject:From:Message-Id:Date;
	bh=qQ8N3KlB2LjYlNGD/x7wapPflb6wcQ2Wbo5qYz8N0aw=;
	b=eaxU23aTAPaoRnvcfmlQveCNXEwviTHzG0raCTpF+tUoI9sdspiX97c98B8YrJ4f
	YcZ3qMNXJnvaTtO5XUbwtBTYZOmh0uBmgwSu/KBHG5kju86DruTcB1lil+b8ln1L8L+
	Xdols1xxkrxjSGpW2veBgxAD7INq2rZcW+3Td8ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653533819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQ8N3KlB2LjYlNGD/x7wapPflb6wcQ2Wbo5qYz8N0aw=;
	b=gCxeFy/oqBVl1sJG8eQfKL3w9qzjmGVLvpgJZWKkDmcRhJDMddjGO4YZ7hT+veBK
	ucHege0Trj5JStA6lPLW4OKQ6qlXa/7CUyGkW5uHyi33AQCwN0C1HX/7m/BuO69Gm5G
	+axs0G/WopyivjbCP7UcTq0q1YBNnj72GWD/OISY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe4bc21c-71f1c3f4-7755-4d61-912b-968d95dac64e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b1d150207cd55a8563700e18e82beddce7847a3e7909cd024637b13c72979d4
Date: Thu, 26 May 2022 02:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653533819
