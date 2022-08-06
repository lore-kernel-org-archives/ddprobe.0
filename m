Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADF67C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659788452;
	h=To:Subject:From:Message-Id:Date;
	bh=t39yuAkedFvC4+2tM3BYKci4jVKU0tijTtiLjbYddQs=;
	b=P5Ty1DmeGp7rEYe7AV7WtMDolCbyh4AF4IB6iHxXgrVBct/MyDl5pRxBvn+H8UsJ
	jklhRAcTKnx0knNQso3nWtEsSww5sWp30/pAKSVdWVB/tl807dYGi/H/VFuVuq9t4gf
	5klKeG/6WhWykC7QvkQCY3YkscEBHW46QOT8bf+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659788452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t39yuAkedFvC4+2tM3BYKci4jVKU0tijTtiLjbYddQs=;
	b=kLvpIfVrvAW16LvDR2iyrFXfFqTP7ns2u+QqrInZOLKGsgEENOtkqU5VRz+7dbKl
	bkkN5u2kf7gzcse0ncetyWODlXF5v3/seWSaHTvyT7BxkhDELNFk+WJ3hEwfuTLOZaj
	1yE6cPoFZ90HOZ7w0B0dR3WLY9t/uMPQg7MUGGZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827319e2dc-1e09a8d8-c7df-48a5-a399-17a284beca49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc40204c820601cb05f7fec8a21dc7133f55d4926aa5f5aad32421efc3728753
Date: Sat, 6 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659788452
