Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36151113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653553079;
	h=To:Subject:From:Message-Id:Date;
	bh=wku4YBZDeByGFyfPM0kWR5s8B/FilAYvQeb4TDjIvWQ=;
	b=OMobD1YuSAAJ+1H9YpZpBq8Jlz9693alZq/MaSyH7OaXDUKIlHx/ZqVFfYUqf+jf
	BCT57EKY/CTdGLc8ZuwEjhJ5sHzM8fyR/ftIm/gaSft890c4RusvzdzsrAAr5J6n6ld
	6r2PklZTN1La/dq1jlf7EwHV9bDv0pXYURF/KcCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653553079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wku4YBZDeByGFyfPM0kWR5s8B/FilAYvQeb4TDjIvWQ=;
	b=Pa8Ub1r1qh1/fE4Y+AGB7kWosHaU3P4JYL2huNrOczuXpCnB/f1swuNWnvpxgWUU
	osk09SHecsOwXM+YW6s+SPPmrecShj5Zz3VyrKmoWMIT5P4lpZSWNOzLxWFenWtk56+
	Up1JvhpfHgXRjHE4o1nkTLbTGlhuk4ZQ9yPkLNr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff71a3c4-7f2e1e56-1f6d-4a21-b6a1-42e73d710830-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2dd1959ac57710cbf212ffdc097e7ccaa05379bd98aac3248e7e00bccc4f9ee
Date: Thu, 26 May 2022 08:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653553079
