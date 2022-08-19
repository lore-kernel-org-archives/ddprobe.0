Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAF617EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660899652;
	h=To:Subject:From:Message-Id:Date;
	bh=jLd9GHqqUO84lYCeJFUU2BsvQ0eCZAt7OXJikzCcdno=;
	b=MXb2RBPBc2+F8Stg0AtCRAq0xRmza2pd1YQ3neBnnojNuDDi4yvR1ZsjdtFY3JBB
	b7jWKrH4yuKoAN/fErQgIS17FOOJ4ykEkXAhdmRNqYdIOJhJDlAtZT/Y+XTdz4nAy79
	KZtMTsmsSSrx4lzEhrvr+YA4L2CHfyYacbkyo108=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660899652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jLd9GHqqUO84lYCeJFUU2BsvQ0eCZAt7OXJikzCcdno=;
	b=jrx3XwOOHD6dzKetXaX5TUCdtpr1RsYaARG6z1CvFyqDpVrX/anTGrMBT6U86oSt
	S/NXWcafCFUI0hXWtxELaJ8aZ4nc0zPeI+O6wr/HX3xWoMh07njBDDKQ6hz2rkISTKK
	81GF9ruSEtIwPvRiZQpkGVVJJSzjedqAAPpOaTi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b55573c1-d9d4cef2-538e-40ef-a9ff-68ec6573d4f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d55a67d890c5b79fa4fbda8a055d9e16dcd703e290f9213de2b9996cfde58b85
Date: Fri, 19 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660899652
