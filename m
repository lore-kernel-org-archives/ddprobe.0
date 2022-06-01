Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049AA3205
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 19:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654112579;
	h=To:Subject:From:Message-Id:Date;
	bh=qygDT+bWZb6nwdbKSKwScr8t5f6FDCBHeAu5g7RkT1o=;
	b=Cr9BTMEjTqPnr05f2m7BMtZPEhaXhAu+A1irNw2dMSQdk8d8MLboswLYlLoZwSXI
	fdAEnNCuqB6v2vz/mpArLtIZa1bIVBITDU35or2oyaLJKZ+stitTygdEMKMVOT4Z3Ra
	OPg1LUzjp16ZChNViLTvM66Bjroa1juZPHfe1ENE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654112579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qygDT+bWZb6nwdbKSKwScr8t5f6FDCBHeAu5g7RkT1o=;
	b=bn2QyBCe+7/35b35RoKsXIPueb3KbA8M+OYFc5N/JvlBm418gkwXLBW38LXIcX3Y
	t792aPXO+QW7Hyf94nbv+hBg1ROjlt4aoYY//6lotGBOXMhSrI7ObXwvACVmiDXm3oL
	/c9zryEvdJjS3McfyNzFJYSLoaPthNkmD70zhmx4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120caeec5-17bde1bf-d213-4932-8679-139dc60e9ad1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5649617ad237717b09634d3ea5421d6a8105f196a1990189feab27d361bd7134
Date: Wed, 1 Jun 2022 19:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654112579
