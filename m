Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9D77B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655568719;
	h=To:Subject:From:Message-Id:Date;
	bh=0zKQtRxxTRMuGXFV43eErPwyPjOayFyzj8dLIXCBZeU=;
	b=ebzThnAcgIHc8jWWQVNOj5b0W98rNLWaaUb3NmS+8OGStZNeCLikXb0ENfeU11n8
	d4zicVqX5wrRiosT8qcYF/qOhQv8380T31PnaRPG+UylgoHNUnFuO8ItQG64k4nAt6u
	ex+JA+Yy9mPYzZi47Z8ypGYNxrTijhu22Ovh+coE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655568719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0zKQtRxxTRMuGXFV43eErPwyPjOayFyzj8dLIXCBZeU=;
	b=ga+Sd0FAk5yE3GZenjX7bNF9rS0TNka4jzDxB058dz2w7lEdlZnf3FK0I9z+YZUu
	afbYISPEvoM6VYI/Zksw+4bFmalclT2j/tyhqCnerZWbDYq0VR1TUWm85MoDsRhXOG3
	PrIwOxTUnDbji3EvrVkJmv21OWef7YgraSteeynQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817795dd98-ca9e75c8-3f9d-4b11-863b-f2bdc6e6e854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eba3e21a02835dd34a25b09455dcb51d50c24351d40bb1dbaba5074fd756547b
Date: Sat, 18 Jun 2022 16:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655568719
