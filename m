Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE1D2575
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658089612;
	h=To:Subject:From:Message-Id:Date;
	bh=iB95vrURZerIt9Mc19CDkvxoDG9kZa9BIoun306vK3k=;
	b=PVA83h1BbbhCeO/AFL6BPIYbRCmYeP6aYJ77E/YTaHzT+XyZJeov+fBnyC48VPGk
	RSdn6B6Ndb2oWm05eybfhLR5p0RNngLyEi6DvHHYJJDTWDu2OYTT5Yr3hYgKE1LYXrL
	l3iVHTU6f9s5BeYimDggdV3+cchWQkei9Ase+1Rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658089612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iB95vrURZerIt9Mc19CDkvxoDG9kZa9BIoun306vK3k=;
	b=ZlaKGjm2eEVlVguQ37obDPeu1XhLnfv3zGVfnJtOJ88VzsOBOZ2GcT8yCJXbTNy7
	+nhsQVx9V+S6q0tzAe7Q9RAgYssXFkXDYMw4PvNIq86hYuoWMUK7+FAWejJ7XMK3C6I
	GI3Ps5rUljXNCil5EX2WjEgBS74rKu+W4KiiK9ZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820dd7a3e8-81ab40f3-cd39-4977-8fcc-a8df7583e45c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98fab185b7072784f798184dadebd1d4f1779b5ff280f9a28525dfae6a24c7b3
Date: Sun, 17 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658089612
