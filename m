Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C65023A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657606612;
	h=To:Subject:From:Message-Id:Date;
	bh=mh0C+dYAkOBq5lMiK37VTohot0ok3f/Rgq/9W1jfGPU=;
	b=fhiQqSOjn19UJL6DzPkzPBqOi4FTt9MghaSAbet9hOI8lt5hztVUMuZcrQTzf8f9
	iKcd9AryVh9F63WHhqE+N1658p6N+T9M9Lz+5Sf7UCroFSJo81N0WbKBlDA8W7zQk2k
	Ymk1AJlfivbIVpEwle11MTlI3Re9IMzxfNP+GT8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657606612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mh0C+dYAkOBq5lMiK37VTohot0ok3f/Rgq/9W1jfGPU=;
	b=PItnPp6da7nfmls8rI6JbXusj/e9I85ROOPiGwOYaC48Qnn9O+ylc6Hn09jD0tQp
	iJ0tUi1uKw5GNCHaZM1PCbS6GPjsV8g/cxnZvYs27Lo2S/DalRrhbH63IA30bQn4ofS
	kY7E9s0qJDBrqwvNqDZG0jp5EYeO5o8JZ1F19QRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f10da56b-1ff48abf-999d-438e-974b-dfc644461a73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 009d573bf38b2032be064ad7351866ef296a79af7b810e6263e852670ad22460
Date: Tue, 12 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657606612
