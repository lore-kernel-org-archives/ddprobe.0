Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320F810F1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 03:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655868659;
	h=To:Subject:From:Message-Id:Date;
	bh=jkh7GvSH/xG6gs4wE0vCW3m4ZomwsP+dEMmqg/0VlPU=;
	b=V9ihQjSWDwbXVtJBYTsNnIEU+PygpUaOCANq9BbuQlte825nF3+TIZlBBVmTY283
	wf6PbTan0YdlmgovAAZz5W1lZU0CPHsaflkXelhhpJDYk5axZ4f+LJq6NlwK8aGM2AG
	N0DRP9SqFWswKBVxWL89DHLyXz5NybB90r7nB98U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655868659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkh7GvSH/xG6gs4wE0vCW3m4ZomwsP+dEMmqg/0VlPU=;
	b=TDDtySwZ1UaMtZf6wa3vaLcvzYF8nrsGHn+TnKKRkJh1HA1vIw/6CAqhwLCX97bP
	1NJpnb4N7lAPU6kMQ8WEIqCe2Bjy6ZxZBl36iznY6NkmohXyy/vZZpXuUfo0AP9qqB0
	90AMdtcspC0DimChexM+5e2K6H5/DfzrOijYHYJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189769696-4b73a2cd-af65-453a-bea3-a1bf7f38a2b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7af8860457a31b410bdca5690586dcdb32b33bdf5d96a5e326910db4a167d699
Date: Wed, 22 Jun 2022 03:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655868659
