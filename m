Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E57B36D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657942612;
	h=To:Subject:From:Message-Id:Date;
	bh=j38xiR6twhnbEt6P5tCAVi7h/CdzrxaYw6Xs18hC6iQ=;
	b=hSFB+On4mKOl9Exfu7/WFJ6nwI50Kz0sXLJY5/EXu/ktHsWwp8QN+l1h5tF/0hud
	vOxDeQf/70uXILTBlMvldHJJ3nz3urdRItMbjsoX0IGsGBZkfLR5s5KmJoYj7lnMX5E
	EWHx2IzPt8T1m9AIuVyjRavrNt4GKd6W48aPeaM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657942612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j38xiR6twhnbEt6P5tCAVi7h/CdzrxaYw6Xs18hC6iQ=;
	b=VhvumC6wbmWbW4cNvrE4rm5K/HF4Qcun0B2BSk6Y6FF5W/1pyvPqFijCSdkp2xTW
	PgsbY1Z2rPnhj/EmIjncVnvOcQgqv/IN96a7nleNyCMG5z+Z2ru5sA7FJMgBPgu9q5Q
	1XuLnzdzfKeWiYfJmcdQtJ5qDfflhdkPa1Eb3j6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205149979-422f3a71-8941-4ea5-9689-ee8ebd4619cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5c95fa2245f614ee48acaa82fd601282a3ca2975d3024878d80e1fa00fbf1f1
Date: Sat, 16 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657942612
