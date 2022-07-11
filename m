Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B64420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657558012;
	h=To:Subject:From:Message-Id:Date;
	bh=lQ1R2RKM/MZjQpV1Bs+gn71MjPviTtLj67Zd1aa6VhA=;
	b=E3ge/dmtviSft7MCySpvJhB+OClP5hnAJDrJ0nFSdwhDWA4vP+ieZ3vEQO/8awzL
	PD0KCzATVU8rzskL/8ALHakSOc1DTgbkncN2hrOMPOFj2lPb3VwsOkOP/AGr8JjeBVX
	pvYVGegdWUgOn/wI00LWsneyjiLcUKKIYQXbRBlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657558012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lQ1R2RKM/MZjQpV1Bs+gn71MjPviTtLj67Zd1aa6VhA=;
	b=VXAglbUXAhN0Qjm6WSkCbbmPoMSGt+DBVs5mCB7hqtdsP4ZtgTdhybJg7tTJoaRW
	3Yiv5wkUcsBpMInChSYleyedBNTjSazjSqlodOI/8gb1XCGz65wAxNas7TBTFMgFi78
	c3FTBZTNWV8wA+pqh4sJrlkVL3ABz7l45rXHCsao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee281211-f3f1df61-3104-43f2-b5ce-ff011e483b8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b05eb97bc92a9c68f3539a5647708e853bea25898fbd606591b5e2b6cbb02676
Date: Mon, 11 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657558012
