Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11BC2F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657012612;
	h=To:Subject:From:Message-Id:Date;
	bh=337wQ8tJxYj1pz4HG94wJ34gucMVpyAJMhpa4PNCF0U=;
	b=YIh6Ir0IdPw+LfM4T72VZNiUFUQwOAkiO2BF9m5jV4/dGByM1eJoebea07pQnRDr
	oyi7sRVcpZYsLmfEvHImcN1MH7w9866mBP4VhX+wY370gZJpgaUMfdQEXq/Mk2J4guI
	IxcDbZjKd68404vwKbgvmofLyq73iciWPLClUuUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657012612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=337wQ8tJxYj1pz4HG94wJ34gucMVpyAJMhpa4PNCF0U=;
	b=at3CupEhph5vlv2b2IukJspNPQd6nklAY47GywoA+YB6lVJ0wU2/FiA8VzCY4Uk7
	p8n70HZ4fdWbnw8tPrXMYO9dFQV0al7a8S4khxJFFrR2g6IrpzdOZpZFCBkp7wAPP8Z
	Ix+HrYPbcGboN+M/flX8vFPviQOc+LQa8Vg4vOoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cda5ec98-2fefd10b-e281-4147-9866-84db691afeca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71096d2c8a39061de047b144cbec5300598e5f85e503752e3fbf998bb7cf49cd
Date: Tue, 5 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657012612
