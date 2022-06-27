Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F193428FA
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656328012;
	h=To:Subject:From:Message-Id:Date;
	bh=UxH5tJwQxuwpINE4fRr8KNT4M4g2IaFZEF10SxKD6Yg=;
	b=RrcgsFWaWTx81lqJNHQP4wXalatrU+rqQOigDylF6i9dUEHF3kB/0R2UwCod5Gds
	En4vu2j8Rq2+PKmYGrOXC7ttLKbdeUCKBLnlM7y28evyLFw7rp5tv6/EE8gg9ZaoYr7
	z/NHg5TDG87MQHRrHXdk04xN9BqbmAhU6e8BeRGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656328012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UxH5tJwQxuwpINE4fRr8KNT4M4g2IaFZEF10SxKD6Yg=;
	b=MQGGe3uVoN/HSnyCWZ7hOmVjWOZGh/LOCDUMqJyyRk+Nrkpimw78YVlexULqsYoU
	owMtdt9dr6mhNkR4I/ghcLrd7zk4e/QBp7/IHQJ+B0BCFkFoDD+9SlCZR37ATuGeThs
	GnUKU3DHRkQXoQzpWn/s5lY+5u0wgFj/1Rjvc2qI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4d7c219-56f5d6d9-6b5f-4859-88bd-5f7f0f886cdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fc5295dcbd0268d45573555b83cf8253066f53fe822b0baf8a3e713034bc6bf
Date: Mon, 27 Jun 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656328012
