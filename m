Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE663D98
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659210652;
	h=To:Subject:From:Message-Id:Date;
	bh=rA6P1TFeFP7kkZTKu8y4Bm4wr1Xez14E99dNSVERqao=;
	b=PVwvYfT8IqPjKnwCem9OpmXOC0DWJqCvMogmy+YSkE7ypLeaJ9P94IE2CeTMPTKt
	kPlYFhU49ObgBaYMYkoa7wb1VyDqHjT4HqQxZFowTVU4cHYW5S6s5Wg/R+rxMyGpOX3
	yI6G0I4EKNaW74idmqAhgG7ITNCQ+1P3RIbCQs/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659210652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rA6P1TFeFP7kkZTKu8y4Bm4wr1Xez14E99dNSVERqao=;
	b=PvRTSgkP+sfXYVG+w7OZI07zfC7n80YOvg0KpH/NBPG6X0mgf9y7uUZxCSXmoPlV
	3MI080Is0Dt2/uT3POuPeosYXkDB8wurdcSAK+/WM8rtxRAE1aHXc4O5Eln87MrOvUq
	h+WaTdJTwfyuymgEnaRMz4xML07uCF+turYaOD+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250a95bc4-4f003700-4dd2-4c8c-b703-2fd6632e5b27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 184c0590fac629ce8cfadd0a5fb3b47971c3527c18c94151e12a856641392547
Date: Sat, 30 Jul 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659210652
