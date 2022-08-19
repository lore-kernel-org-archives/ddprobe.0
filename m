Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E144E7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660876853;
	h=To:Subject:From:Message-Id:Date;
	bh=poRUlMdd3ZUUOASBk+dlq5jSrJa7/jFYK3N6uTxWmWE=;
	b=U15CDi4nc1FEWkgRJquldIEO9v7wQT1b91CDNnEXsxKnr/dHN3ZmnyiAqxgBEcUD
	skLSTe7ncUS066iUIGeVQ3UDr0XGgabq9pO/yJ9g0/Wy6vhgxvjSzSmtylvVWertUds
	c0wRY/XfIh4YuSSHDWoUM76YihoGrgYklEijwWiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660876853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=poRUlMdd3ZUUOASBk+dlq5jSrJa7/jFYK3N6uTxWmWE=;
	b=P0cIU8I/CeKwq274W/AbdVxv8im7MeR/slY4Vsd5SHrS0hHODns8TO6fVSB8sRo5
	MM2YCaZocF0q6d79lQUhGOBdjzlHcKVomVDRNipbKIlmeK4JjB29Eu1U+jUuCmgn4ta
	nkPqY4TcU+o1FhVni3MQtWOrZnODBjDvdoNHdWeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3f98da6-393849d2-d79a-4eaa-83d8-642e8cdad1f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1d19e6501e15c673a868f41ca4a7f060cb64f679e09b6ab9dae3d70411249bc
Date: Fri, 19 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660876852
