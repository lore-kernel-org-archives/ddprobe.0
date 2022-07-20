Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1977B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658311612;
	h=To:Subject:From:Message-Id:Date;
	bh=xw6DTzwotPjz6hqnM5Lmzd2QSs2XfL0zWsZzCJJ9Hvk=;
	b=XIu3PZhskQFhCPuiynGMzGzUh04MP+nQ8cwIKLX8r4FmH9W+XC4PDxtwQpzkDUtT
	9XpLHqCPgvl7prDByr3Oy0V/8fbuC3OnqKWK/45H8FnnZrY4kkh0YDkUbusQRXzee48
	Y3S6d9U2cFE34wNBDGKkuwDopbzrMJ33T8Jvl7LE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658311612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xw6DTzwotPjz6hqnM5Lmzd2QSs2XfL0zWsZzCJJ9Hvk=;
	b=fRDB9rm5EKCubXZvhR4QNcISWCepYOvzy2FHa/Pyap2715FTz+Zew6FEhivh+i1J
	1CPxFL9oVGQz2HUDLWq7jbj69gxfCb/yQXioLIWfPf7kksKYlplhiSz3I0EhJZx1AqR
	wvC9pmyVf2eGAbj5nuxnU8PYcftJlyL779IAxuRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b13178f-c58e9177-3409-42eb-9f70-dc72446126b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfd39c807cd40aedad98a1434ae1cd76503e0bb1681c607ab63faced95c3dffc
Date: Wed, 20 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658311612
