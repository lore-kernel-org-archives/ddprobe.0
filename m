Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF567A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 03:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655092379;
	h=To:Subject:From:Message-Id:Date;
	bh=eEpnoL4xQ0gsLqIDTWlkn3qp5BtimMuRKOBdTZoBfGk=;
	b=A7f27n+t48dyVhXVLnTHtzR2T42Iq1U04lH79I3vK1G4Q6T+vm07dl2nxH9Bx077
	FE5oLNJlr8WIzYr+hw1+yv43voQbhKozyUZgLwvxm1GMzfpcHZ/PRN3uZ5AOIErhCdy
	3f4dcVXzMULLAFcskvsVmiOd6FSusPwwnA7TdzWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655092379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eEpnoL4xQ0gsLqIDTWlkn3qp5BtimMuRKOBdTZoBfGk=;
	b=a4SAey6CuMlz0VYCMHzXFw2Q+1iW55aTI0GaxM7WVEfEowfXhhFqoLcBcE20M3LL
	IXJDasplnYcoeVPl6yrfmdTFRCg7njcSN4lS9L8hvrBANSvvV0oqWVPopTrBjAlQn1y
	89xFZ/dvdQjgKOJdO+nuPzjyxk6BfZHnpXRexETg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b317e65-1db0b07b-7390-4fb4-a61f-89f5816a70b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 774c843e2273e5234fbe5a642c254e64b6831a91735665ad415305e3952db0ab
Date: Mon, 13 Jun 2022 03:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655092379
