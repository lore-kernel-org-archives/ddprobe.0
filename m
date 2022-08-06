Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D1010F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659763852;
	h=To:Subject:From:Message-Id:Date;
	bh=3kRgM5UGI9g3xIUwt25HHXbCCIB7VnegWT5VjkjxYAw=;
	b=RByIpHFDyrnBNhHkSlOwkMIjm8V04cETAVWpcmN4CPqJXRabP/2vOxTEFePTrZ9v
	+yAyznaLq2e3HnE8Bk82page9PVBGMRte2z0CYo0yGay1lgIr1jrDL8h0aL2lc0nHrA
	tQFGJCEg8ayBlPzZSxOSQQ3HID9uLQAYZncj1IwM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659763852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3kRgM5UGI9g3xIUwt25HHXbCCIB7VnegWT5VjkjxYAw=;
	b=LNhPOLwnwYlG09QMB5IQlol7I0lqZj5A/ojyVgaMRMTKaIo16h8DDf3hOSaC86Vy
	2mGIK5LvSuFsrJ/hVcb9gIXifwoPX1Z0g0pJmH0FeKzL2tHM+gXiYcu7HJhHsoLypfP
	qhb5Ucm4NlBA33SpAvDM5J/lCIDVBcT2JCSmIDvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271a28546-b6e9c34e-0328-4f46-b68d-3b001d9bb0aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdfd6bdcc8bd2895289a90d3376af96d8cc75803d9ae3342942c276cbf0023b5
Date: Sat, 6 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659763852
