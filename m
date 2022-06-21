Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88FB7E2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 06:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655793239;
	h=To:Subject:From:Message-Id:Date;
	bh=paDsiG0rMVGpzrR9IVv1aJzgcotgRcmHN4DFcVOlxnA=;
	b=GO21sni+FpJuAbxreE9krM+C2Umwu0SAiFz8TUG13R9YlU3noGZILE06AhofyOfP
	TKpXUySHz4AZGkV1h8zcEjvTbzoVpVm6YXlgX/Aqg/e/ggIaW0ZnLJqI2WmcMr4CIWH
	iQg4bdTLze+ZxIQ9jhE4SFjVZ15RTpSjA2v7aVUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655793239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=paDsiG0rMVGpzrR9IVv1aJzgcotgRcmHN4DFcVOlxnA=;
	b=ktKhOQrzm5vgrcHi0pt4rFaBz4B5EARsxERTUHlVnWb2ghISBABV0XuTfCsnoX8n
	uOb4OhnCjaqQxqUEn7jBnr2XBvLkkh5qp/bxDirxuSaDkunO066OwMht7ogYHl/PzD+
	KOGwK5R9tXikLGxM/oG70gzY9aoIXcag43uAdTao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184f7c4b8-5e9eb531-6032-4d19-9f9f-3b5d1790b7ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ca4493496be8689f5a59a5e8cf41c325a697979f5e6e7996ea2c1c15c0f7944
Date: Tue, 21 Jun 2022 06:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655793239
