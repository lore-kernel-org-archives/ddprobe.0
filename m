Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85B27FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659661853;
	h=To:Subject:From:Message-Id:Date;
	bh=dvz2zwo2gOguY9INjtGr9+knRYtZ/d02W1QhXiR2YUo=;
	b=LQ5qTO8wwLTGxvQZ9F4rv/teYSvb2crEe8kCxuLsVExcioT6zLu4mdnbsb9FUfQZ
	aafpASlzW4axK2KxC+zuWWdbHotjgQakoTnpGK4A6XhKUN1+kpzhRQqkNkToE3rHYO4
	Oos+DIXEPvCgXlc6Uqo6negRVggx3FR6bFaC4F10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659661853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dvz2zwo2gOguY9INjtGr9+knRYtZ/d02W1QhXiR2YUo=;
	b=JxcDhfUnyz0gpU136rVRwHn5CYqQRAtBGHzrzsALWdaCM48JKfoAcK4RW2d4oNsu
	1Bd0RkfIePqeXBzvRZffr1f59Zu+/34vZsUVEVRn/d3vc3Weqv09ZTN/wVhZucLQOau
	h3N9LBN7lN2aHgykjwTdUdgbIRsihQqvsPnp4fxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b8e1f7a-7e64c5e1-5f05-4945-bd41-e7bc9202f1cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b909a88f93f04252f1165595409de5c689c1f5b302e57b8c94f18e590a12a933
Date: Fri, 5 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659661852
