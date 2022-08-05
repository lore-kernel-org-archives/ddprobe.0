Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABBD7E8
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659674452;
	h=To:Subject:From:Message-Id:Date;
	bh=UGUAcpj3QiweshuVgwsrGUTbdDMs+gVUu4C7DaDh1M0=;
	b=V3UjrkT2fw26SZMkhm152ypo/ci8+ab4ok4QmY2MkE2ofHiN767uRDNByXPXc9uD
	9O5ex9lAt3bXpFb66VzCkRQ4182sGPF+l3kvz/IuagGfaJOhtc4nKUyp5IE4J/ubnDI
	j3a9kDAgMl4CO3hloCND7Qcrdx35xXjtmxUZX1CY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659674452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UGUAcpj3QiweshuVgwsrGUTbdDMs+gVUu4C7DaDh1M0=;
	b=BBgYQ9NIV5B4dYMLQ/An5XylqEKtZ4VodA7C0p0/IlusNE8SR4s0vcRNTkHaU6l1
	6iJ5SllpI0MUgveX0VyCxWmKs6jE9e0+enombZ0lG6CxbJmthOpHzVwf9juM0u3Tnam
	ymNO/PEJB9iCuQZ9xP9CqoVmgP3+nQnQujpgUJSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c4e624e-2d79f507-bc5d-4282-a86b-74a525404be7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 910b2a3de4e7eb7294b1d2a8de43301dd0847bb4616f21a2737b4d20671839d9
Date: Fri, 5 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659674452
