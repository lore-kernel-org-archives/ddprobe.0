Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F25C620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647063384;
	h=To:Subject:From:Message-Id:Date;
	bh=BBGYxPDTaLemQu9MjkxAMchuHVe4RsoA3S5wf6USAJw=;
	b=albfcmo+BkdUdi3qbVTotogWpEPsoKcUcoidjtXyRACpfVCbQkMXDcOslllRwRnw
	eja+rygsSzMSN3ITw1j3kmXw7Wo0RwE/Wt27YIJh76u+jiRMW2GuAlDTt+L+BsusmiN
	6QA5Uk85ksHNJMxWPTQmI2sospnHenAvxmVWRc/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647063384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BBGYxPDTaLemQu9MjkxAMchuHVe4RsoA3S5wf6USAJw=;
	b=dUHVcUJmPMw/RcLM0gP/b6Ob7u6m10+jUCPyzdKYRng7gCWp3ktk72rybcek/QKW
	4fGBWWumLSlZYSvvE6sZ6UbvFrw6HStbj/Cy9b9u5/vQFlxNmluqt6JSnHd326hdsST
	2AJtK6gy2qq/tCtmuZ/thGF8zUQwGIeLSjlrTR5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ca0c2b3-27baf231-9092-4f2b-8455-6fccd5a613fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6d2cd769542274cd2bf3e8a532018ea09c16d18f098222643a5e4017d7fae9b
Date: Sat, 12 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647063384
