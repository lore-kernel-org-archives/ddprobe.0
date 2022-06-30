Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1D7A46
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656579412;
	h=To:Subject:From:Message-Id:Date;
	bh=zwOZSFKJ8AWsQOrGi/ST0Y+bSDSoV4R0TVwWqZ2nNHo=;
	b=dyiOsO5VejnH7dTLnnYq1j+ZYsUMSVUaEKFv6qjxfwp5wiSLvEtnlF0xq1oU++Ay
	hG+YM08eXeFdK5g0yOC8dXNXc/fsYRPojQRAOsVIvL8stj5x9cPJbW4pA/RKm3zPZrK
	LUXKW+QVIZWtG7adgU6dB96UNibulW2ULxljZYqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656579412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zwOZSFKJ8AWsQOrGi/ST0Y+bSDSoV4R0TVwWqZ2nNHo=;
	b=LyHtqBxKtku3rmiZkPt1rm5XWpT68Q4FaIuvYrTMn1+8qIWIfHTkD1pemwjWVKFu
	Ne1vwx/+BriJIRrIpBEos2X4rCRp+lOF7dK8qOGktSjAyzAcLOKAhawHIaMcLO1ODBZ
	/kjsE2faaBfUtQ3QWTuKurHztlKBj+1bQKqVTHqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3d3d16c-6b50eb96-06e2-4fa6-baf0-554ced5bb5a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab81c245cc7fc783f03b33abbae981587a164fe57572bd6257bdb642ae0fed9c
Date: Thu, 30 Jun 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656579412
