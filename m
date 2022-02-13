Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7785F361
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 06:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644732631;
	h=To:Subject:From:Message-Id:Date;
	bh=GGRhXkCROZ16PR6hR7FG+tSLDMwuFZHkYkjC3g3syPA=;
	b=gpBCzoiNEUfMgtKJj9ww1Vb7vodmPkz3HQB4SeuQOaouD2OOQa6qbvCVLYWSIeLs
	bDxDc5o5iHSXv8fgQYWaCn4Y9sLdPW3ZUnuRN2sriRdVUI2Dmg3MOwBpN8XnNxyXXIb
	X0SN+Y/Rk45cgl0hjwMd3qihnDOfY/HBcsN5KCqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644732631;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GGRhXkCROZ16PR6hR7FG+tSLDMwuFZHkYkjC3g3syPA=;
	b=i3Gixh1TBNGoL2Dd5+i0Zy9ycswMhHAtnMQslxmS4Qk6h8YSz5bcrHK+mE0msrc/
	2ITMu+4ieZ3JPxy4YNr1N9+KqL4ASsRFspRVlLF4wXS4vtq1Ti4pKNH+J/cLf9bmKoG
	DpswiNyQo1ifHFyTns7w0vwgcAaN5/kb9rJD91Jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef1b44a57-52f2671c-5090-40ae-83ac-03c9299f86e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1279487a4f309ad0202c888c0a57d12bf43d8fa95c5b7496cd51be6136de2f34
Date: Sun, 13 Feb 2022 06:10:31 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644732631
