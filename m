Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFACFEC1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 12:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655813639;
	h=To:Subject:From:Message-Id:Date;
	bh=W2y9d6/PBV4crkMcA5tR/oFLZmbFZ7cnWgn4YErZqcs=;
	b=dSFK1bgwLk6p8S/fL1p4Gu8o3CzZi9xavnjUXOs5r+N40k+pdwkxxisGnaRNfC7Y
	uixcNm4Vpa3pK9St7afglawowQQsHuHtqlSKuZUW4lyqaHadISglTzgqF5YrN+oxX5N
	y35CKVajDOOZyLPwbWC4K3SkWBtDerBeOvYs8PFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655813639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2y9d6/PBV4crkMcA5tR/oFLZmbFZ7cnWgn4YErZqcs=;
	b=j8Dtk07VhcYmnnud7q7HIIaFgqJ3uPJNdLxThw/0VJJNLchq7AxjxikwPNs4IFt0
	CT6qWzAFHahY6zG2BtedskPG4Tis2MWbiirhGdMgQpyaHOTiagpHA0S1tMlnLhloZi7
	NELK/yT3fHQ63C9ljiCNyJdQw7mywT3ghSYrcdq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181862f0c50-794e602e-62c8-4b0f-a62c-95631a267a5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41967ad4894857a7300372763df56550623e2d6b79bce1d0a743363cf717a818
Date: Tue, 21 Jun 2022 12:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655813639
