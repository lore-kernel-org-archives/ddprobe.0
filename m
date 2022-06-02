Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D88628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 00:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654130819;
	h=To:Subject:From:Message-Id:Date;
	bh=DA7gwQA5kuqGJDcjb0SgSmRewLmIJDT6YlpSEbOnHP8=;
	b=G4LuP6e2dgVvaLTZktmP3Bj4ZZHs+Awb9ujpo5Yhb2APuOCCCMmfdI1Xw7cmFBEC
	fyOZP4ChpA7D8BfcJOZgzNsB4E94I30PlEk4tr19iz1+GmHcHnwSQNKX0BlW9VsZik/
	jo3HfQGWSINwT4gsFPK9pyp0nHHLVkCJDGhbwZ58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654130819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DA7gwQA5kuqGJDcjb0SgSmRewLmIJDT6YlpSEbOnHP8=;
	b=XDgskIqiiBTyxFQD1lYPc3mToSR0hPnaxRHk4rauzMCYTH9+P/iEDdXG980dHh0k
	xloH2/RP7XenbepXVuJ4X3X508ROat619N7H4DU+dt7Lv/xkNBNSIAwaq1P8qyJ5GlN
	ARITrmbkBfc25yGh1pfURqr/zLykmFC1YYGDKlUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018121e1410b-206bd5eb-2de7-4d02-a5a2-9ae73cddc5c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81a18a2589c18f62d2420974284c58958f77de558871fc9e6a22b56990acd7f2
Date: Thu, 2 Jun 2022 00:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654130819
