Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E703D1FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656821212;
	h=To:Subject:From:Message-Id:Date;
	bh=jew7Hs4H5Hr8r4pG0UrjJDurhjCWFSVhR7JhiDCj1NU=;
	b=C+xReyhhyB3EuAVYwmA2xdg+s4tzv8QiQ96M16AdZPXHSNTxiTZx9egIRdVUDflj
	A3JgMpuBRoDyHA1eSwWc7f3facJfpulLdoxIqBFscTvvtsXAxntcWp3jZVTbvxZI6bg
	YT50N+3SMhXdUUZO9668Qf1i0SkZ8qyqwDFUutlY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656821212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jew7Hs4H5Hr8r4pG0UrjJDurhjCWFSVhR7JhiDCj1NU=;
	b=Rw4fhR5UuFXpuOnndSRcFnNnjj5XHj+RtkE84n5Nk4N8f4ueXfKeBawJjeYwGvYw
	9BZCaJfgYjtiKKj3yQh+NmQIHZb+sY52XUsvS/kiLfYY88w9cfCYrpmiXZg6PpF8U9B
	EBqtmFLqinjcrQN8y4k+gBjQLCTvQKtwFlgcyo0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c23d646d-04e55630-589c-4db5-aa1a-71d89553642a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73f8ee3948055faba9dba48588d5a66ce39fa259e2754a5a62a18b76c21403eb
Date: Sun, 3 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656821212
