Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17637F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 08:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655455319;
	h=To:Subject:From:Message-Id:Date;
	bh=B/QggP+1ximvWqVgWNvJKwi6kuwRvnMVoaJmCuYfwjM=;
	b=hjKwO1OjYbbbMF6pmQVt/2g37H4et81hlx50zm72TN6oX7pKjAXVM39UIjsWW7hF
	ZRX2p15LkjlVLnCZbhehqzzf6j7skaZ5Qa4utgD0Ac7nhlnzhtcFYuHg+gkLZUitNf2
	M+Cze8DTHd/O2TP1ZxBBQKY4dWg/UipIwRGPqBaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655455319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B/QggP+1ximvWqVgWNvJKwi6kuwRvnMVoaJmCuYfwjM=;
	b=Ul/V9PuJA9Gu87iYE49hdcGb+U7dn8eqOzylCIn3S+ILU70AKN0GdhSryqZXe383
	S0zKbrXRz0bDBNSr0uHzAyj31WN1A2ph2tureoDXxtTqRKSYkee8nuELravKsL9jK97
	KgaVeMPIDFOpJ/kSMF+xojx1tR00m0BFh7r02B6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170d384f1-29de2227-2ece-498d-982a-067b444aab99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed1a8f718392ff6707bfa65dff2fe84b3cc0d8ccdafc1d37295d1c43f4a25d2e
Date: Fri, 17 Jun 2022 08:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655455319
