Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B2C666C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657150612;
	h=To:Subject:From:Message-Id:Date;
	bh=QXNS3Th8RQAMb0Jiz2TSx0uOIFbA+GDFtuIxOFPq05w=;
	b=GTJfjQwcTmyAeXrYsVaf4sRpqyZqYMTmJTK0XmW5fEkOUXySyGjwJt3aMlc6s7aZ
	oBp1ZC3a6rWksiktwrNyxnuBBkG65Uy2QB1sntxEN4w9ujjpA/1onMeIH6MBV/UiUhQ
	xCl76g8bEmlEeHh+mArkHvOYHM8muTCbFjqSAk8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657150612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QXNS3Th8RQAMb0Jiz2TSx0uOIFbA+GDFtuIxOFPq05w=;
	b=igk96Lwpditv2jPihtuK6W51F3GTMWbI4VmOJRv54Je124qPtD29ElEONoe7z/Qa
	rxdT5zUxRfV60t8bB0kzcSoUMoL66FFKlbGDMkH/N2JtL0XHOplP9F2uZi5IwjsCh6D
	GDSEojLUoujL/Z5TIIZe0+71dEWPAOaeJv78+Jy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5dfa3a2-38a6a52b-e690-48f7-a9d4-f71caf7bca93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd5f2f1a526ec09c6a50d2c3033048374c3456c216538e8272a2fce71270b09a
Date: Wed, 6 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657150612
