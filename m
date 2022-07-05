Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D002917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657007212;
	h=To:Subject:From:Message-Id:Date;
	bh=pKXRlEnFyN+J8OGdQ6U6kfGzZHG27d2VsMYCOjqFWZw=;
	b=US4W1T6Lnb7OG17l6gdQAZaMuOH49CXN45xdoydRDrxxSgyl1UsNwY/HltIWOtYJ
	QdMmwHf29aQaRkGMrmCIgjTu8FrxqD0tv002SWS710BpuchzPBoe3b+17CnAi3Opm48
	xNIbfuP6eRi/OWjGOywwsFMelsJLLvw7hxE/R35U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657007212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pKXRlEnFyN+J8OGdQ6U6kfGzZHG27d2VsMYCOjqFWZw=;
	b=CfT6JFjyFvBAx4WWzGrA32U/HLowqiFG9NRd++KRyasKHMxqarjizew52y9npuiu
	7h1uPGdnxAn2NFf9LZYhvIBcWZngtk7DM7FV4UnQ4R8GjIBoHjUHsorWOhJFqq5U4UZ
	Zg1y764ytTS3uRZPI2Dkhp3KksXqgs1/lw7kU4r4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd5386fd-e61ce9ea-079b-4d59-8e90-1169514f3ff9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 606b523b58e882a1c6f5ca64488b5d76985bbaa8268b08b8dbd731c060e744f5
Date: Tue, 5 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657007212
