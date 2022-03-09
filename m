Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8702548C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646846485;
	h=To:Subject:From:Message-Id:Date;
	bh=hTHftsae22igi2fd68XyAGhTpAjK+FbLcoeF7LzuCW8=;
	b=Ioxm4sX2DSYVEOmOa93VTLpAvpljbuxHgq7H1Fl6NShYlVuDGYG6yK6KhFpnH3G4
	YclqQF7r5rMDqR/2vr5kCnZaEZpTN4HAJ0fXyT2BgtP1B7tnmFtPnagIYcrhnJq8Xs3
	KQnMlK8FbDbeOKZU0c6la5Lr5v1xC2XP9Cmo/H8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646846485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTHftsae22igi2fd68XyAGhTpAjK+FbLcoeF7LzuCW8=;
	b=jR25L4FZ2RoPYHLLTFihUQK0BPQLFVqlx2y952FD07O4PiQkHoBpsF+JJAmfSfGM
	mOTqAFf0B4p6kTYV0xTy1vzDSoBgxYpSwTLY2nzgneGYIGaDFtBMAmUFoshF963ov2T
	juq8ad429xqSjPDKIORMDgdXuZEI9HpqeFxFwgvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6fb3212b-c9a77bb1-aab1-4310-98ac-dd30c9484ddf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a028c1a798527cc61101c7f07c91454d5fa0ca4e2dad12d1fd2d5930adf0c98d
Date: Wed, 9 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646846484
