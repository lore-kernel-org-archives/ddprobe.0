Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEBF17E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660954852;
	h=To:Subject:From:Message-Id:Date;
	bh=bIGJfiSDcafwQL6jRu4eHm18b3S3YzgU1cvUJAa4ckY=;
	b=BFtGyMivmVvqPnKlKs991V+lKFx1Gkp0lLpizzKv03z1G4QV7doMpTW2MM+k27Vo
	VS+X8yLmPe+Ngw3jy1r1Pj7JATdXyE3jx4bqQA5RjdZPhbjtstucyP1fIZ27Rf3f6qY
	eJsrj8lo9CLnl3LcOt7X/MWq29eOgh9+6VVXGUes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660954852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bIGJfiSDcafwQL6jRu4eHm18b3S3YzgU1cvUJAa4ckY=;
	b=jWdiWYti00O4+YKySZmvUzs8tiNeLaKslyghQbheu83ia4Mj/iVlvbHmFm2yzngt
	VXb1tbp1OXfxtYmzkqZN1DPhEOdaJw8iGr3aH27CwHTNctfytBXOaJQ22ijRB3hdYZ6
	/Vgux2Si+sYg65F03t63OFrYGyaIYph7YXZyKCHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b89fbcb9-e736fede-929a-4a1f-a880-7b4f46d9d8f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cf5ee2e771886ac211d9cfbb1ec1c72caab379ff83e9baca7dc96eb897fce7b
Date: Sat, 20 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660954852
