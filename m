Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC0B7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 07:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654585319;
	h=To:Subject:From:Message-Id:Date;
	bh=4Gd4hLkMEK9hOZsFOatSUHkNT9Ss8vzZ3bukdjMkja8=;
	b=OwE7k3nbopNfuWMfS0auPyUtzSEVvIT/+jghh9eOE7PIv3bjU9yogA4iyITbOT1l
	5Gz9QPR9tMwZOJmeA3sqn1qYkIDxwRNaW3cszZ/ry26Cdup/p2AtZJmBS8CJUWpmCap
	nnXBtUhmpC7RTtr7A44BDjV0h+3QucpMniq7t0H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654585319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Gd4hLkMEK9hOZsFOatSUHkNT9Ss8vzZ3bukdjMkja8=;
	b=SYpC7vaxA3YQ4bJM7xTiFlFYlgSxYRWeza1jpW0l0i+LzRvDcrrppd0i1Qj43WnW
	Zodxt796jtp7uCp5wy4HaOF9ATPx2zEWSNwR7yU2APGgZhez4O8mKfF6FbVzbov6Bgp
	zHtuuwQRD4Cuqc2kTVWM2WO7OmuJOxWVhtyY6qLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813cf85f7a-9bd74930-a416-48c1-8b35-410521964e42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50651de5e7000572837c6f49cba8f00946cc75608f9d12975fdfbf7ec691088d
Date: Tue, 7 Jun 2022 07:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654585319
