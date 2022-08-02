Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D827F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659409852;
	h=To:Subject:From:Message-Id:Date;
	bh=OgmABgd/CXnBCEuBEZu/dIgMIROXoJibb4RsTzKDEdA=;
	b=ZJxw9N+6pGqu+JsKqZijxhxp2degvzcgHP2zwJ01l/v+eqfB7CZkrbqD9w7/Lbwu
	dp1V+vu7EZ37XSt3nAAsulrH3NaKzubUisfPXMz6AGghSeufjIyO+zdKccDDn9GUpr3
	MtTC8VHRwwoGoKahM3qcN+kgr+rOb2s/Aa/1XU8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659409852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OgmABgd/CXnBCEuBEZu/dIgMIROXoJibb4RsTzKDEdA=;
	b=T5OO4M2eu8nNayignZH/BhThstvHFuzlhX4n9ASI5x4EeciYBtOOJb0gt40wlExV
	bh1Sqrt81Mpa4wiDdva6l25tIzPCk/4mPn8oG6ovh2lnj5aJUA4SIvVtU2BBoJjQ4sG
	642FRjj+6odK96AMHB73hCuXkNxOwdt7E0TAf0bs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c88e876-80682966-f11d-413e-a263-b24174174220-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 755bcd9315043456be0c0c2358458d8da492835e5a03ffca3c34abea2e175621
Date: Tue, 2 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659409852
