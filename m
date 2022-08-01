Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F677F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659316852;
	h=To:Subject:From:Message-Id:Date;
	bh=G+9kopNlnO7b6UDQxPcnGY2kfgr9CDgq07B+wc/RaCw=;
	b=QpOVh37hUlyMk5P0emXiGrXV7g2/mvEKB7jDgD5LIZtJvgciFtwFkpPya6GkbOsD
	l0t11367mUWN/zK0AsNMafB/QFhsUI9/wDUByDBfZ8HIpXN6oYfWTZcpmrnfW7/J7O4
	P8npeyDQzmtM+iU/2ZKinUREOknztozBZZ04TKBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659316852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G+9kopNlnO7b6UDQxPcnGY2kfgr9CDgq07B+wc/RaCw=;
	b=R1H8COWws6murOxO8hMkNP3z+BNzGcLMR0PRU9PZ/25LkHFT96U57JTiWTco0Tjp
	ivAwXbjoxasDSctqM/PAn0Nbi3aarbozaqk/GayZ3GMgNFgE5rLS042ejJ3zXaqO6yc
	u9rXBz6XXZAx1TcsameMwFJIHasJ8JRapbgjYPiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256fdd75f-b69998d7-2213-48b2-a120-b282e42203b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b2499e91bfb6984ba48e164bf4d1b2bd14c29c2327bee71335e9e6067c5b69f
Date: Mon, 1 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659316852
