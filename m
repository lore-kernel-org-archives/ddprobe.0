Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2A3EC4
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 13:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653486839;
	h=To:Subject:From:Message-Id:Date;
	bh=zSMtEWdlSEu5g5afLhgGrP//JgCJtXqyb51mz82CDvk=;
	b=QgVe84OImbIzRfcPJDT8y7cBgA6rtlEgmKmpvV/IGkKOAEGJYbMARmIR5Mf9UUG9
	aK1wBf7SMRujJ0n+FeEMH1JYXagCtOq+njwWqJydxRhUqaU3ov8wZW/S3bF3y8V4UP/
	lgO9xm7lVl6BbS1u97+WLpOaa8jK8qX79B4n7z7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653486839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zSMtEWdlSEu5g5afLhgGrP//JgCJtXqyb51mz82CDvk=;
	b=MTmZ65cpgPfXjmiUvEIFScEJ0LI/hCyttWJe1zQrm80dNy3VcXJ4JDZzQh6LOPpz
	bGlo2o5FyKt7SK9daJ6SzaKrOnx0Gm3BowdNld/ISAglzinvLlBiM41r8zQTkIKWkfS
	mCgSkwaJ4MneH9iPPDFEAcl0CM7n+EzjUTZXl9HI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fb7ee5c3-58dda1e1-14c2-40b8-a7ff-8026d7c6c815-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34305725bc3cb44ef9940228c081b25bf35724c1ccc8ebe5f36048daa9e7afe5
Date: Wed, 25 May 2022 13:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653486839
