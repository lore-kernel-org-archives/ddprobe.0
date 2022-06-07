Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBE615A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 08:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654590839;
	h=To:Subject:From:Message-Id:Date;
	bh=ripsqWihI8Mvj83ceXfSZOPq6mj4czI3P9pgEOOwozk=;
	b=cNfoowvZMyHvpjxDvLL0/j+m4V/OdGqgx35ez7/FYzp81IAtoydMrH5xqdnDBOPN
	pu6j9EiCzgl7nGDWJjCNv6Ezi43NbmfqOVCvI2XZZ0AMPb+9lewsM3yUXTMWrx4Q6Zb
	D456UCmPoJxoI0y8AToso5YnMZQsaQE5YqBDFuL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654590839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ripsqWihI8Mvj83ceXfSZOPq6mj4czI3P9pgEOOwozk=;
	b=eS9qDNwBFtwTkUTqSCFCUf667y1u3DjA7i6Lv0m9dUWc9EXbtxeoQd0FfB1S2IUa
	A5B60dp12dALPTyiH3Xr7Mld8iprUCIUfT9qRGokybwKpR4GzzjW//Xh/ZM/NJLM3Q0
	NR4UHNixvYEfKt/nVorDW5o+xGwz5JGDO4k1NFI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d4c9a07-3f82c08d-064b-4ee0-9e18-75d76efc24f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a9b06daf260f5dbff57a9ba27cd9e3792f85f4d446bbf1ab7627cb0d4903c67
Date: Tue, 7 Jun 2022 08:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654590839
