Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080E37C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 02:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654828919;
	h=To:Subject:From:Message-Id:Date;
	bh=C3dkgE21qe8upplalAUfXeERKd2YTTDyIX3CneHN1o8=;
	b=gk/gy9xSWv6cKqwCe91EwmHkaA9ib8ceo7GCNgYIACu4m4ELD7k92XFkNle6pD6r
	hK4Gee3lS0tdnGKuNgxHdgsphcOHpRjyNxb2mAm3t/jT4qvxxM+oQXs+zCSP1s3qKT6
	RVliFAGefly212rD7tLoUikiBEBwfQP45aRWuvKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654828919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C3dkgE21qe8upplalAUfXeERKd2YTTDyIX3CneHN1o8=;
	b=KcvXBZYRmLS3NfDCp19YtkF2tEL1Jx/voO9DV2YqplounmZI6qbwHo3mdRQsoT+Z
	J2FvrOV86I4SjDtum8m5bZsnt8yqCCnyIqaOySPtFznFV2uAsBjMYJ9ukuvYO+YUowH
	SDm2Oa0TWQuvdBAnkYnmTEA8/xGUPPhPBPCA55UQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b7d69c6-6f2bb3df-f198-4f94-93c6-dc257c1cf695-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8829db1edb615700fc3c60f40e59ce9792cbc36259e4cbe2362ed45a5675f292
Date: Fri, 10 Jun 2022 02:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654828919
