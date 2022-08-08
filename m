Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5491360
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659940252;
	h=To:Subject:From:Message-Id:Date;
	bh=a9nEc/7ZkX/Nxeg4QkfYO9QE9X3JQKBYIfCD8z4o328=;
	b=Za0XXW0Qglyj1I1GVEDiDG12U+a2ng7UYDEyDf1rwcDN9Xa53PXhcZi23Q9YZEBQ
	YSooAms3HBfCbh25Tnu5t7LJ8LhgKZVRdtdeVgyXjrgb15dpqfy1dpefIlLFByOHHvK
	bX/bUxCQsn6/91GRH9RPCUi4a6681KrCI0fWGb4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659940252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9nEc/7ZkX/Nxeg4QkfYO9QE9X3JQKBYIfCD8z4o328=;
	b=S2kHGqtIKmOlgeMTFT8xtqoDqnDJChFTayGzH8nS/4+rDG8HRh5iY2kD+bH6tkp7
	/9EiBcnEGy0uRfYsSs02RPsyDpPzOn93rhRCsmOeDObihIVYpt5luDASnGBCV7s5mQ7
	EEdVoz7YvbTlF5yH50R3UnJ/sEEMVyKUOy5vBmTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c262b97-9f874e1f-4d63-4e0b-9d66-ac62d35573cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb65e85d92fb1043ae96c105805687ccd4b63605b509b2cedbce198de654c6f5
Date: Mon, 8 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659940252
