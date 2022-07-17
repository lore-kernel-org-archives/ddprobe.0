Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E9B259C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658092012;
	h=To:Subject:From:Message-Id:Date;
	bh=J/ByoHo7/bBbjEpM0yLBF+v6hEUfTbGo/N1mITzQfJo=;
	b=kzSNUP4tMtaBYcqUmMV2J9x6wbz0SS8gbRsJjFnSOaSIyk+02ZF8z311lPHnAqFJ
	YElOt7rILd+NqDyrD/NVeLnQfPhhxBwwZOYmc4x3DTUn5VzDLTFNByJs/jI3J9n2yAI
	hR7v7J7oZZLceVDDj3TLZGxwIf2v7e6D2784qZ8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658092012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J/ByoHo7/bBbjEpM0yLBF+v6hEUfTbGo/N1mITzQfJo=;
	b=VSLlHa2ge56C8HKQ/q0JGXpgfSejsw5br885c5b2wtcQ3WW7YcbAIs5bvfLp0YGt
	fIQTt/LL7lu6lBFvBouVRVi07bV/Tt/pH8rr4eY/2Jydb5Uz0uUMQJn3LbnRl+tJ9f5
	IxIHETCh+2Am220H0xJxMyM1I+QEj3bUnk8yc2aI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820dfc42f5-72aa509e-4f22-47d0-9dde-86266385f8ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b5865b85fc00dd6e83aea677c27d0d078b8670f9cd7ff4fdd30a1a4cb6a37a6
Date: Sun, 17 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658092012
