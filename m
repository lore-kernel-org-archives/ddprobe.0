Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB12810
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 13:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653397979;
	h=To:Subject:From:Message-Id:Date;
	bh=mQ4U46eZvnBRtrRc9Yp6tnHm/cmutocUIdUXxjMRIsI=;
	b=UKEm96HrRXuDOTv7M5thHE75aNpVds/MJS/TNmLEnzgjxM3ho/2yZ8UMvhsrpwSk
	p5R6GHUfbU30qwEi5MyxnGHU3OSy+wtCuMuuLP4bdESCl3xD1tzDu6dn0SCjk1yM8Yd
	cxHbvHgjGdGh2UHiSlgdLOdqj+yrfK1T19BOpQY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653397979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mQ4U46eZvnBRtrRc9Yp6tnHm/cmutocUIdUXxjMRIsI=;
	b=EdJnrfdJP/kA2dHtbixiFKqaD5A21NVoN2YYBp8q/fZ5SaQQ7fCTYZD+zYpkkmq6
	2rESrd5qZEB+xKFkQ8Q6JRnQJ57MXXc29BCDE6zhWrl6WMUBzMphpd/rTm9aMPaWMcm
	v5+f1A5n/VmFImuiSBAiuMlrpRj/iJpzqz/iEGHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6330080-acbb29df-589e-4653-84b6-4c28af15794c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 621ef82bc065b4a5e14cb2785634636be06914aa2a98ddb159696fb587d41086
Date: Tue, 24 May 2022 13:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653397979
