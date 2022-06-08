Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64BA2F36
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 11:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654688159;
	h=To:Subject:From:Message-Id:Date;
	bh=SfLufpWP/YFPnGR3bpOZEc0K3Ayp9kwvIOpCC3gvvCQ=;
	b=Lk7OUSXMyoXXjGzpKDL8FVrzOsB5Nt/s5//kOWz4PubjVbgrSezkKr5qTemv1CM6
	rCMNhf9lK9mBjRgQcpmQS/wdhKinI0SMFAu08rxDCk2yKweqYbNdWw/Qf6gpH3WOU8B
	zDf3krpo2t0XxoBh6jR8ZsHm4gUK1EyUitqQrNTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654688159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SfLufpWP/YFPnGR3bpOZEc0K3Ayp9kwvIOpCC3gvvCQ=;
	b=SwCvklPg9Q3ENqV53R4J07x3yUP/Z/OHpADZfCPNdf0tsB6pbQYa/B6xSBz8y4g1
	W1Tca600STL35YQz7QkgAjTF40A2v8NwseOj4ckXGsO9c3q7lLRsOyhn4zCRibRoicR
	o7J0b4s+mLNcoSrolVyzT377MvMYywZVtkeZu1hs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018143199610-fc47d015-c29f-4025-ac89-f608fa30d1e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebe4e46c839b57465c88e06a3fbee590512a7057e490abe7426c8068d697548a
Date: Wed, 8 Jun 2022 11:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654688159
