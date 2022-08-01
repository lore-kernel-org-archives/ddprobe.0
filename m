Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7001D7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659340252;
	h=To:Subject:From:Message-Id:Date;
	bh=CcTB7MNCyonETU6Pos3WorYgy7SGOzNtW1x6Y5YmjrU=;
	b=kqNb3mF/WCyF5kUaXz8s2wLwvcknyHFZ1wBTNoZ4NNzZNjB0Qz9u1FsXJMMXH62a
	EUSfL4/4pCe9k55E0ympbtDT7YVDVhdD9tDErnERmaVGjKWSSDHwkaSqFjYTVyN1gvd
	DxVWAJcfo9X/2SN7hlGbvcFwXSXk/B4ejGPmL58g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659340252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CcTB7MNCyonETU6Pos3WorYgy7SGOzNtW1x6Y5YmjrU=;
	b=iRAWyAkM4CYYQFUB2KTdOYFSY84GVth2ugw0CeTMuSVtQYroWjjC0L3m0ggCwKmN
	YWo6ZlA4dQtJKPlH6L693ZZ8y8LgH9JeUBigDMv6aJ2A2Nx4pO335slt1djqMo2HLn2
	JltauTpMqyEbkH5OnkuPlLlU3hy8VWbT62NRiVjI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825862e572-9bfe338d-f723-4399-996c-013efcaed0cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f4e91ea0a1dfff7356d279664dfbd94ab2efea8149bc0a1b4785d13649e8c05
Date: Mon, 1 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659340252
