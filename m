Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47122440F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660000253;
	h=To:Subject:From:Message-Id:Date;
	bh=mQw4z1FjsA6rpK3f5+Z+L6mj8aew8RjCMjZThoGZIuE=;
	b=UmGL3+uiNG/fZetR9cBtWTp7ybOX067Oh0+qGnnNRQjvrMbgOdGk6JhhCq+Z7ESQ
	esdnN/PG/8dRDfBwz2XnAFUH4VRl2X5QlCn+JQebRo0GuOjtU5rgMJiukCVojQgdE0N
	ZNFSXp77sg/KO8G4PL9pzFw7suLadkXzoKuhSknw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660000253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mQw4z1FjsA6rpK3f5+Z+L6mj8aew8RjCMjZThoGZIuE=;
	b=XUemK3yWSyJ06M7Gji23rhldae44liibWVu0sJPh0u5aph0F5VbgT71Dyj4PRTN3
	qaI6ZQkQFSko7WJ3kCCCxgRLUBbVY5AAS8EG+hWsPY6Ni4K0oBtLUyI4k0/Brk7nYCT
	EcK9bmDOMaKp9GqgZRT2+PaKL4AgDxcXjhmu6HC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827fb9b276-6aa6c022-2695-43d0-8675-1e3ad9830946-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 868a3e4850b4e20f072d4e0a9f709d6291a51089d1ccee3314d11d1a1ca7c014
Date: Mon, 8 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660000252
