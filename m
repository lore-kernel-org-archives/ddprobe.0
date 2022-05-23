Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE49F257E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 14:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653316079;
	h=To:Subject:From:Message-Id:Date;
	bh=qgxwoSI6LEkiTRYbtNsuu17t056IpXsQcWCk+HZMUk8=;
	b=ebWJxo/rvGj3ayq6tnF5gDyJYs83tEHz9U1cyy7rs3RrumZf1UjMvf0W3D6OQLGE
	V+YzBGxKWqVdxXO5x8G+SkqmW+0xETUcF2ofw4RmQ9PfyzgcrQs7KPTLNTFnwa7Ae73
	LPQ1uvW2WE3EJ+O7QEwU4TTSsG18Z4hBnkNio/ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653316079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qgxwoSI6LEkiTRYbtNsuu17t056IpXsQcWCk+HZMUk8=;
	b=KuuVmdxLFP/mu6OK6F/xwU49pI4lGtUXU4KS+O6ZkFEwi219II+MErRzmWDZ3vaS
	tmFQSYPB906DTiN/vGjmnfW/NHxFDff4Siqtint4+xObafHrdjobYow2OoNZYMhrRQ8
	GYDW5B4R8q1HgRzBCgjoV+t3zA8ufEaiVxaW6N3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f1514eab-a299a642-933e-4b70-9cd2-932ecb4e3aba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef207ae11d5b100c73b44768be8bc3e6f4a2dae1ab8cf9f1010ac7508fe4d605
Date: Mon, 23 May 2022 14:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653316079
