Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654133C9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 21:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651615138;
	h=To:Subject:From:Message-Id:Date;
	bh=qUEDkb/qBDFPqsDTi/QDTefoL4tgW5L/DAZ2W0nf7pE=;
	b=R3OztiHxqpi0/vbbg/quAtf8sgTtTXPGWkEgLFfRVcphLWYGZdtYXpwQCWT9ZG92
	YI7PfyaX8QUecQz2RKE9eaqACEiR7QhcQHQfN9K6tqbqbWZtAdB/9+NgP/HdX0MXWrL
	TKt0fH6cINO4CWgxo4rdzQGamRbZ8nzVFpguiy/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651615138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qUEDkb/qBDFPqsDTi/QDTefoL4tgW5L/DAZ2W0nf7pE=;
	b=EzDUYuFZsSFyCVyNHpX/XzPzAaTk0nfChjZk98dSskEZebvhST13PIuVS4SEpKWG
	VHYlG39mLGG9vwCVRt7aJ+AZHNvmQxwL3iglj5C3syvt0vfnpcVdy5NcRxXxBHl0uLa
	eWl3UvZbXRZiVvMdggvvvRLY5O8RxhIK15j/1oCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808bef01f0-65dd254a-8e76-42cb-b37f-80d66b2b672f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b2a6503a229aee53c53b34e082c1ed2d5c244594efc6f7e8bdec968af0cb954
Date: Tue, 3 May 2022 21:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651615138
