Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163BF7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657463812;
	h=To:Subject:From:Message-Id:Date;
	bh=kpGWuO/3q52jcnskVS8i+h8DaJcehAR4wxS4ortNfkc=;
	b=WOsHIFdCkAN7MLYai6JBQU1mbfCV7EXdzpqUqNOBfhg6G5/8E0P1Wv5eOPVuY84m
	EUcuS+6TJJYp463sYjVkGqbqCnP9CUPeiojxCDih0Y7FZpvlnKHdd/kC+AmTXTQVbLH
	MCXTooeIIEKuNaHM8A0VHBKhz0Ug2B35s1IFcHHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657463812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kpGWuO/3q52jcnskVS8i+h8DaJcehAR4wxS4ortNfkc=;
	b=JP0iHH3nZ+zNdexTQyy2sy1uW85jl1imYPXAahw0sRAHdgn3vgukFLOdT/8jgh4r
	vDF6t6L77WX8m6+dYwkJ39EY0YVFV6DAockvDoyufxKB6NIIfOQbrthNTAVrhOHxr21
	SAv09BLLfsEQLxwpzFDcwAeGEtAXJXFlulPPmHsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e88ab0d5-11639cb8-999a-4a65-8dca-3c06a7ecf832-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ba9b618d51f818ae94b9cd3bee3e1128f28694c3b47c17bd910df1d4ea0e9f4
Date: Sun, 10 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657463812
