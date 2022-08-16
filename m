Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7F81104
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660682452;
	h=To:Subject:From:Message-Id:Date;
	bh=cEEtLeDi0m7tj/aPBZjmpRn6f+AFsJIkc2uqS9Ki6h0=;
	b=Y5Fn23NGYOkwi9LGphLlnYOmp4GSiaCh05/bNynq9UjPPY5THE8dZ+bScbUmvTKa
	Ll2wHlgcqhacNqzEWrDN0t5vPGwHKX1I3bZeNa9u0TkAS5ld1gd5JT+1ST1IgybYfqs
	yupoiDFCqdLtyrFNLsA5BqSpM9dkyYmrVlE+6vZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660682452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cEEtLeDi0m7tj/aPBZjmpRn6f+AFsJIkc2uqS9Ki6h0=;
	b=XR4Jk/hsxACGbkybHRkKzJMvZmgo62hdBO7nie1OeTCY7lc1iID3koby4Iy/3vFv
	8kEJJjMDxosqbQysrDyQZww7VbvsJ26LbCIkVjLXgqFcLPpZQh5e2p3AMVnpTrJfT5e
	sLi5/UFZ+ZbtSbYNhHK9v6KSjlafa6Y9Bk743xVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a8633e84-0bc50282-3a34-4487-b2b5-446a669b30fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4921783254eafdaaa012b17e1b55aba0cd43beaf1190e5cd99805dda38533ece
Date: Tue, 16 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660682452
