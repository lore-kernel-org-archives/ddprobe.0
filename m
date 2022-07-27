Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A1910E0
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658929852;
	h=To:Subject:From:Message-Id:Date;
	bh=SkPINOqKaK6JH5O1SU/tmja2zaoC0/T5WXjtMm0zVOY=;
	b=eGSwY8JnVyvy6R+5o+O5Ko3pHsIaTzqpQXSG99Ljqd4vGhiEDvekPUvfh5hdpEDv
	BaqLfhTNasmD37b+4Lmhch0MdT/hyX4/ejbjkTmzr6BvqJeV/JIawhhKN8nb9HApEoA
	kZMTo272r60mvdC5GrF+H1EPKwKj3+lQXAVxGGLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658929852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkPINOqKaK6JH5O1SU/tmja2zaoC0/T5WXjtMm0zVOY=;
	b=GQvKmGx4NrQaJErA4geUb3QfC6CWwYb476ZnuewqR4bSvNYUFnVwJsZnHVAaiIUw
	ldxh4gDNqRgDh0KD+KnAD4mXBpFbShO9GFdzkboX1GxDmQxV0zOr+bnWMJZJe65rlEs
	xhCW++qXIprZ3Geg0GRyjWMMG4WvnzFKgKGKAj3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823fecb099-8c8b8dc1-fc53-4ea1-b38d-df9b403e80c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8f6a9c88fcc08ef1e633686a5c2de65c397c3313316586b3eefe6844d78a7c5
Date: Wed, 27 Jul 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658929852
