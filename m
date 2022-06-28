Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040017A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656377212;
	h=To:Subject:From:Message-Id:Date;
	bh=Gra18PNk7UA/g/wftZhue+AKQHR0BFLNXSyZK2u7WOc=;
	b=NsbFtxcK+w2tIVb2QFINOE7Gx5Jsn7zimCemdCd2+w1aH0vPDjuaDln58BS1BoaO
	I478m02VAll0/TRS8v9M2X2q2jh3Kn5dvIr/eYxfoykjnY7314YLip/FM4dFiRQkFo0
	16G54+elcmgxytGC8nT8nnqjN57r1ZbKtmGj8y/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656377212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gra18PNk7UA/g/wftZhue+AKQHR0BFLNXSyZK2u7WOc=;
	b=FWkmGV5xYnlqRyUm3kaOFb2GlAxll3akM/g5FpI7+zexYU+4TMe+YH6sxxw7Bpjd
	vHDlhdUkewELXiFqlRvGyGhswgemimqazA2u6M+LHvU7CpewVqOsCQvuwuVQMUnm8/d
	XuLO9wbdFujRZwndDdJCaKkSpYoWHg30uy/CrGmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7c67d86-b308c2f9-9f8f-4c71-8342-314d2e84976d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd2c2db2219ac6139dfb7c4e2f9cfb0277030d88e35d66ab2df6c2f26e263fea
Date: Tue, 28 Jun 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656377212
