Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1288A2D
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657337212;
	h=To:Subject:From:Message-Id:Date;
	bh=T6WCR53efjFsejD5mml2+j23nDEc0zuMZ0hLnJDc1fc=;
	b=C3ZRSq8sBXI+MIDZGveFNL+SRTgDQolsQe+oQJrx8I6WvZ66zHhb1eziZ1D+iyXf
	pKlZ34de1v22OJBM3Qh1J0Ljoxx4+7SvqvCFYrW+ZIzbt3wgnjLIY1jCvgfnFEgwbcw
	97LVkfkmcT0ySxmn1amKVxgwbrs22PZHhtHWoX0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657337212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T6WCR53efjFsejD5mml2+j23nDEc0zuMZ0hLnJDc1fc=;
	b=HsSOldqaJhR5lsaTbnlwn9vsS1eA60G3o3VPQ0eSvSIxXL8U9xKsqqmTCSRWh7Df
	lvnX1bsPNdgjXrMZFjZdm6aL7nmpWYKhXAWvKHjpcVpYh9HJeOGdwSitYfYZNLFnEWB
	tIOLLtM8BaXCQu8gdt94b7mdEYsjZyr2Q9G4iA5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0feed72-a39fcd74-56a1-43b0-8e59-fccbaee21a3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3681455b78833b498f9d4200751114cd07ad721dd296fe7a467db5b30c8b525
Date: Sat, 9 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657337212
