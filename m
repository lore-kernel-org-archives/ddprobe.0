Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A9F7A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659855052;
	h=To:Subject:From:Message-Id:Date;
	bh=3ggHyRKXEgcTSCsKhQYax5XqIvVocrol6dQSjERNBPI=;
	b=i32zqgcnNhjksNopMTbRdOlawO4tmqvnJtKW3ft+fYnEYAAzubzPROq8AcEEBEXh
	CnJl3NE/nnVdK6S1ebMUowAD7qv+aX3s9QmuBQ1Q0j4lMLyYNt+IkaBkPueybqb1cmK
	cre7bpk9L4O/2YBOfzTBSCWsK+fosJaPFc0gNWmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659855052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ggHyRKXEgcTSCsKhQYax5XqIvVocrol6dQSjERNBPI=;
	b=I3onqRIu7FLErNKwiJvPxzimdwleOTKmPf69LB3RXi9T2Cj9/PyC3Mb7KtQK+NyL
	Bcc11aGattSa08YnJSOszDD3mRq++80X5mXBqIPppVMos3WUaPx2uPoQUAmr2b0v+nk
	gN5HpoMP5Yh4n4ZU+/3LfrEBPfZ/PAYQxQhCHjeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277121f4c-c1051b4a-144a-46b0-8d2f-2786e0db86b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7224cd037cf1125cd30b070cce85220f3be6794e7c53ef6f93d8ad3fad6d4a2
Date: Sun, 7 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659855052
