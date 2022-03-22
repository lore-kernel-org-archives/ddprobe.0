Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCD0C64
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647951385;
	h=To:Subject:From:Message-Id:Date;
	bh=l2MzHtmnGQdjgKXLAHN0Cz6fzZjddxqyItkhDzM1gFc=;
	b=jw6vQ9PrFhuUPaXS3BQ+xDnl+Ubqtqw7bA2P5cVGyIHfLjSW1RS3iQkKCT07Dw6X
	ERfkLo3NL5vlibiykDfJR+/Lji6uwGJRb2m2UqH2yIVP5qVNPSkK3PRBSIRg7Cnv2Bv
	xWlz+mtIbY85dmAECV/lYhlAWKFAp4j8Nnd2PFus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647951385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l2MzHtmnGQdjgKXLAHN0Cz6fzZjddxqyItkhDzM1gFc=;
	b=io7cQW30p/Cm+EKg10GbjuQVeN4iQ6Z/qJqhUXtH2aU0t5UqFebujuH4WMH0y+9N
	gBvD03PTN8RJJMCMgU0nHOWCvNf4pYNPNrCWHJl18FwiAy3GAHnf4qb76G3x4Go0M4P
	wJeDE54aW/uRH51jbUT9KDYirFcA1mv6BxRXqqew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb18e90cf-205328fc-0888-4a08-8b75-6f45628ed8e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff9a73f130df849dfc94df3aecf0bfb4e6bfc4285078ba833c915ec4f94e1c4d
Date: Tue, 22 Mar 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647951384
