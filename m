Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8832586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656323212;
	h=To:Subject:From:Message-Id:Date;
	bh=MNTPoM/YveI6p50B+9oIxZZ44BrOtipsyehrBaYtVXQ=;
	b=gW9h1Sg69X3tJUw+GG/sOQH08vBHtKDWxqqTfSdXrQGq4epzHcJUHRO21LrZ9kwx
	QOYTA2LmB1fL1gSQYfEmPWlMhCOjtMFNL9l1n7pF3QCDuZOwKUiDlF/s8Cq7+33F3sg
	W5d6DEw9xnoCm8dWjENh4mT93NehKO7cNakGNoDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656323212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MNTPoM/YveI6p50B+9oIxZZ44BrOtipsyehrBaYtVXQ=;
	b=XawvfIM2UTVw0atIJboYRqpid2X+/YlmlqAuVBJCA0aj4SOHMafHD9rFVHcstKKr
	MGKGJ2VoOl6qcNbauhCCMbhFG9fM87lCeu0RH941f3UQtiMBmYzqljMLtECTF3rml1q
	itjLQyPDMW6HDjwOnIOcZkRr1J8bKRKYQHqWhpOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a48e8404-b217acf6-2ade-42be-93c2-61c3607c9b0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa4355a90abc8d5512590189d691a086c244c5f425c67cabc3510ade2cbf766e
Date: Mon, 27 Jun 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656323212
