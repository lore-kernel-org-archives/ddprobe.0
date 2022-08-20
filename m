Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8AA02C9E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661017253;
	h=To:Subject:From:Message-Id:Date;
	bh=Kk7R4pabaszzZn/m4dF6ZbAazMXHWYE4+0XTRHQUWHs=;
	b=bu8Z6eeQyR3Jjs/Rx4ZegQhD6Ag9CVjOa+o6hsmM0+6vclKdUbOYmg+eA7wJy0DH
	oe1pHeIuppW3mYWk6z2YT0nWba7iCJNgWHNr4M5KGUSAX+pO2/B3YFkHhf3uMYOT8sv
	1kTJ13I5wH2Q4bEt0dllZVi3e6fLcHJ36S22b4jw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661017253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kk7R4pabaszzZn/m4dF6ZbAazMXHWYE4+0XTRHQUWHs=;
	b=Vb3ooYC2dF0j7ThPeUSW/4Q8gJd7gWiQ4wRM2EBMsq8TNQgluPjbnGxWxF31H+zR
	cA8PIacJwppDgqU8gtRbpwjNY8CEcwVShhqYkiWGVYkSyXTPoNKfKR0KUSA9f+LwJCV
	jusGh1wbCHYlb6L/MhvO96SxvEQYhKOc1GheTaI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc57e311-6390e3af-a87c-4e5f-9fd2-a921ee436cfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f0bd9f99b0a0f7ae1152947ead0ef9883e6c18ea9d9231d114f35faeddfea18
Date: Sat, 20 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661017252
