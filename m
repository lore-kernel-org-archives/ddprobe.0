Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3E2179
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646139384;
	h=To:Subject:From:Message-Id:Date;
	bh=G1BDLDl+AiTdGVpIo+rszCIyzBSuIDtkbY9C7McLvlI=;
	b=lLtsQKfWvSAzD5bnitARslmlis4rywzBHqoxrChWYJ2QDAxgrt9Eb+sn0iaKVMdr
	2lZ33JORnc5sNEbdtUgQYM1NS413VuTnSP0R+QhbEa6s8r4HR4mZNlxbHcrvB+KLoZP
	ioHCFdJg3KvQKn2NoTa+v8cmsvYpPsIqftlmk4Z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646139384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1BDLDl+AiTdGVpIo+rszCIyzBSuIDtkbY9C7McLvlI=;
	b=Nz3YPFVPAb8qSkhclKo/vHhQMJdnYfQ6vAjA7NnoUx62iAtSnIRQAykqq2YZavMw
	ghnHt4qcfWbSitn/kYQadBxqixN4VbQaHf13nmi+LPidzL+qEkb8fELMKW0/M1fGBOy
	v7Xdha/v3pupH9Eyis4RD+l+bliDhWN5HsKqfzlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f458da3b5-f0049f55-8dd8-4d5a-95b7-6bd12593505e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8b7a08ea19db9f07bb55e524b6f560bcb06aced1b72cb02ab8d391ad6864763
Date: Tue, 1 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646139384
