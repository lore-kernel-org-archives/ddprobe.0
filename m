Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0CA15BF
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659270652;
	h=To:Subject:From:Message-Id:Date;
	bh=+eTjxHOq++wxWH0M3Ntz0iDtmM1sdetAupB/YS+EamY=;
	b=U8CNjb4oARbsjkPgIBT1PA/+FH8OtJKkBk2JGbyJAn9m5ZoWRAbEfToYuN7Ud44Q
	OwpURgAuHvboZGKlMYDNhxTnb61dYxVYcc3NoB8/ACDsGgcH3tIadGvJFoPccL2Zjo4
	WKswZxH3MDt7RBqzmCXpj2yuDjiGR1990giiPRLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659270652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+eTjxHOq++wxWH0M3Ntz0iDtmM1sdetAupB/YS+EamY=;
	b=Q5fMaOC8M/Evoh4Gc2SBjDBDxixHAxBrC5/W8xRlgqudfZRghhABj2klQC9nooVg
	ZdMFTMjee6sU/d46SbJFX7aILm0hYSVr5WE8BDifBa0Xp4zgnY3VK9t4oWjJtBDoW6H
	njJZk3lAA1gza5BFXG2KhamfBC5GKl4/sEdJvzEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182543ce27b-120acb02-b275-4dbc-9d92-faf342a312bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec138acf68c56ed7f9acedb14fffee205b33ccf2869a15cd3c19c428613e0e18
Date: Sun, 31 Jul 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659270652
