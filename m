Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D2946AA
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 10:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648980658;
	h=To:Subject:From:Message-Id:Date;
	bh=VALterMZ7SfhrE73Sa6+X9RdChXQ9g6iq0tp097X4Nk=;
	b=TdrnPrvlaSBj4/s3ww5jN4cZEVaWLKu5XPPGeyGzq6XY+2xj+eq90fJ80jFEZc8M
	fBBnq1XgZOENG9KB1FldWGxYOQDKHeOZxVPV5FABa76y84xi7IPU0n71zXisfmZnS+q
	dLYCo75bR6S2ZJtSa3/O0qYrILj9tUuquWik0wBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648980658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VALterMZ7SfhrE73Sa6+X9RdChXQ9g6iq0tp097X4Nk=;
	b=hjUWfqPQbCP52SDf5lY3UQKsY9W93OBygIKJStYDzQUmkN+fcdqOvHS/q0Fkdv6l
	A92o7Zn1P1vKoaUax8M0//c+B0o8Sh778Vfy4hSk1E4pfHb7b6U6+cH/jNit90UTyZR
	bHxA2an45ivMruIrGUEiFzZtwaPhuNrSJ2I9gHz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feee8087c-c4c37a96-cd3e-457b-99f4-fe12fd6e538e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1757cc08f85084f4f27f3308d16996dddb34c791d6e58d099de6a5d3a116cf17
Date: Sun, 3 Apr 2022 10:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648980658
