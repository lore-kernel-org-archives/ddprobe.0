Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D8217DD
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656967612;
	h=To:Subject:From:Message-Id:Date;
	bh=DPhRPdbwdfQRMIrHwEsWz8pkwEqa+AEbwuCGRfdb+Os=;
	b=KdQJ1F3cSWp/BNTPlrH/QWm5oTY7OliRCziv94vGT0iNvC0SFe9YwraUb8Wbf748
	bjfGl7cuONyR2kv1DJb7FDyiXhSXfi7KOoZsJT9GxsLo7IKZC4Ak+O40Nsij9aUa6yx
	jc4idLQclCTICStCq/6mZfXqStu/U8D7mDDswpHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656967612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DPhRPdbwdfQRMIrHwEsWz8pkwEqa+AEbwuCGRfdb+Os=;
	b=FE4CiPL2ghSBJW56h1mTjIMwjW1CGjHBd39cIIR2cHGKA1L8CKBgYS5Va7Bqj8CF
	qts/NdtqBbrx75csDbpsDd5n9/m8k8nw3Rfd99JZa46D6Lv/Rqv6iFMgS2mUrHOlE5t
	CB0QwILnUQAg3bgoDJV/z9+vZ6VniNxTSIu2fNoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181caf7477e-e9398030-1b45-4596-a875-8cb162686ce6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e7fb75ec9822a9f178a6811976175ecf19ad8d90553d76b5269c7c3fca4ec84
Date: Mon, 4 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656967612
