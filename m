Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BEF1FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647339385;
	h=To:Subject:From:Message-Id:Date;
	bh=CRep18kcLcUIJsUkIMtx7yhPhHEJt4nrk8tEc0kCjek=;
	b=W2bfTB4jno0UyzCZPncsOpV42EMXIToSYr3Y1blk+sRb0ftnRwUTG+d7cUA4sggZ
	FafO6OtRmvfeLgHwYenbVaCmlSiFbpHY1P/JeUqcZpPJx3gNoEKlr5I3YR4d6xJwtWZ
	574TrbfXUy/ZR6nZW30feN8/M98aYMzkGoQ7aAuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647339385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CRep18kcLcUIJsUkIMtx7yhPhHEJt4nrk8tEc0kCjek=;
	b=ZGa5mP+YvfhAJmb7qXBo/fVQwdoMLH6k3HX+//syy7HkYizzNRubt2sASU18Cdh9
	41FXt1HDpvbZRkTmRUD2P3be90stSQdRYPckXRPLT9m7eKGDXivI802Old1u5NK9I3r
	gjNj6QADNkA7/PWxuP8vsctYimJ6e2ygxf0qT92s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d142fc7-bdb7bfd1-0eb2-4600-87ac-72a4ec0caa0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51b35871b9d46e7594e20eecafc9fe8ede2ffff8f64b5989a3c391058c4d35a8
Date: Tue, 15 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647339384
