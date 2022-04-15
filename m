Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1970333C5
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 16:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650039958;
	h=To:Subject:From:Message-Id:Date;
	bh=A/linGL9iQ5WBrPUmibDgBVF5UPg4xQJ+CXHuwZ77Nc=;
	b=VDcjAYfwgyIe8MKeqmmzWvC4WF4hIJvXdkCYhHOYYUPqEbYcAhGtMn4ENeGuBFOJ
	6GiT1sVeCVbU+MJm+kkErAf5iEkB4ZCDNX2VNR8GKQkbbeNdPgfksKtpb88D4y36hS9
	j5rZ5fbOJ+rD+YuAjtJX3LrsT2gmre1Rin+KIHG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650039958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A/linGL9iQ5WBrPUmibDgBVF5UPg4xQJ+CXHuwZ77Nc=;
	b=Wb2yiP+bM1qTYWHwAHMGbKZZmY01+khz7xMPh7OVkWjH0874TkckH2g+DgxpZfjh
	n7kk+WaVf2qa8cyPcQwG3CzB44y4AyZllzi+NwPX2d0T5e4pMXwnV43MzA6Y8SOfydf
	ze8jAzLoZh4KqRgTX+hPxhMFAoUlZwcKf/MRIRA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e0bab2d-7fcb3c70-1d37-4490-b7fa-16a5ed3f5c3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1247d0fe9b2cb7b56584ba125b6d87c1ad44afe25ed770b58296cf4916604a55
Date: Fri, 15 Apr 2022 16:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650039958
