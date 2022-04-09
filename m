Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EA7A22
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 15:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649519278;
	h=To:Subject:From:Message-Id:Date;
	bh=dejDVYVxoNwV9rEJHiiXcgiaDy9NAgBxeFq07eQjCv0=;
	b=guQepNWeCT8K7CBvlZspFZ/dkbYbH2VBQEdhzgDFEr+mejSWb/J1UdG6v5XROVFQ
	OBqrJKFub7bHu/clN5QW1sUvzCmn+6t7sfqd9EBbCzRLUdeuPi9oJ5GCzgmOgYykRcq
	N2v0PkEGA4qXeTNSyqGJv0tUmopWnaG4ZS/3+mgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649519278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dejDVYVxoNwV9rEJHiiXcgiaDy9NAgBxeFq07eQjCv0=;
	b=XOxiUUs9eSNHBCMVtvvpRDlUXqoQPQ3Z9rgaYzs31Y53EFnCx89nqIjCA8Q++ghT
	v/AKRg5lKP7TA8wFYf/DLIfMoJ+WyVDm5RELpmbDxDc5lPeWAueGbdLNEEPKgr1VQjn
	o94Z5/0gL+r5LomlIsp1sd13Qg6Sk9SvWxLulkAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f02b8af-7c2a5f0e-c80a-4b6b-8211-9c6a45f38979-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 537b77ae016dbf3c6caa929f66d43b07ae3592aaed71c4c6517d3376a601c07d
Date: Sat, 9 Apr 2022 15:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649519278
