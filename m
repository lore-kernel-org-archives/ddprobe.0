Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1042A7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 17:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654624379;
	h=To:Subject:From:Message-Id:Date;
	bh=l4tTNHzLGXJSXaVZ/XwLuT9mCKR459t83abyllYvZLE=;
	b=kH4nXJaCOOvvvsAyqsgie6++laaoUc26696FI0vBLAc9kJSGb6QCMwD5WGhFQHe/
	m/5mYmXAJB6xoLDd1ioWccYrtL+HqUiwByw8ChXB7n2iH5VFW//oZFWL7SehT9SIVHI
	luEgj42sxoEMKvf1sI2ftRoTbEeajVW+c3qm4xfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654624379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l4tTNHzLGXJSXaVZ/XwLuT9mCKR459t83abyllYvZLE=;
	b=F7vPmcXn7WjYYLnbMn54AbT+6B5WtVphneBXTbPMaDtZYVmE5Bw5W4aC2443HA6H
	plfP1eJWkmZaXSylGmmniHw3qVUG4ZZibJuokBk84YHLeKzFw/PTSO+jA1dpxQJpopY
	Ans5AYyoFmV/e1U/NU26sxWYvWfZmDKlm64B5Fwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f4c61b0-24569acb-52dd-4d99-b410-5cf4142f55c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4af0ceef37d021970b19a584916824acc28001324e5152b69ebeebf5adb1fa32
Date: Tue, 7 Jun 2022 17:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654624379
