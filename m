Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F460EA9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658195212;
	h=To:Subject:From:Message-Id:Date;
	bh=eTqTeMa4mBbkPl8wwhJ4CiWDlXFUd+VBJVJ2KeoqQso=;
	b=Hkmez75/QIQfDEkDZTHsXg5wTviAnCplN7FJwN7kTyJOzXP9QDZ4E+KDOyIyuKLv
	Jv0n9mmDw3H7/Fg8+adr/ptn6baU9f6tM9eIkoZvJXknfScMNjD/7q6o0H7/ZhuRm75
	GvtUju7RldClBY5d9HydcNtgOMJQG95bEF14KP1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658195212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eTqTeMa4mBbkPl8wwhJ4CiWDlXFUd+VBJVJ2KeoqQso=;
	b=M/sG7uFzQfPKDf2pUaLjmfEKtYV0o42dQ2Ahy0pK/YKy+Iz0i03Veved/lD1LHjv
	EuMcB9C74QbvJleCDpcAs5p3fUwBlSMcjGj2uOR11ipfdQeJZ6myDrVyoRDwv5XIndJ
	QTFTM7PDjnS3d8xpaPBEMcZQ2JB3zVap0X1TdefA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821422f816-4427a308-7946-4e8b-9ad0-7899dc697ff8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3f557f2da556e2233e063e011fdc6523ba9f482c1d8c9d8d38b983e8f791920
Date: Tue, 19 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658195212
