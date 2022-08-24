Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DC21110
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661331652;
	h=To:Subject:From:Message-Id:Date;
	bh=b+EdKbOemuViiYwIiCQJWqZWpRyaMhjaC8ITQ+d4c0s=;
	b=a1ghpBkQ2azFalYTD8m0n3t6irAeA2P5diJ2zj+Rtys7xrGv7FpY3OK8raYhStnK
	QpggF03rminkdKxsmT+ogyhBjSVO2KqYPiDFSpqtb+5rigflhxn/Hk9TGrIlK8fukbf
	B0lLRc5YGvCVnd445B8SmfoNyGyJ6RxmaJY1nxYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661331652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b+EdKbOemuViiYwIiCQJWqZWpRyaMhjaC8ITQ+d4c0s=;
	b=PIPl13W/PIGkv8L/H5SgDH6UW1AO6+NzRR0QzUKsekLK/+I3T/vvvmJJM1feB2LW
	5HgHyYwcwe4aQMyhwL/cz3DAbGm9/tHdQ5gGq+XZhITz5fPONqrqowTImYS2lwFm5Na
	BjqfE8ZoilC2Wsi2OpJR+ZXAb3pTMZoGPV80Cu+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf153fb2-fb7be49d-75ad-4041-b77c-15471378664c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e1cb6b85e59075b24dc46f69e9e56eca1585c987ccb7b5f9f621a4ab982b3b7
Date: Wed, 24 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661331652
