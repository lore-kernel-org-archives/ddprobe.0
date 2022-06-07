Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3EB15A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 09:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654593959;
	h=To:Subject:From:Message-Id:Date;
	bh=G2FhYOXs+4FLxu2chyQDcO6RRMp2kvw1WpFT6kWmo/o=;
	b=PVcaj1smX9VjkQc3t+oflqSYVBjirqqx3zWLJvHKfytLF6xUvPhcmR5Xea/uo03B
	chIcxxO5REla6C81UfG1eZwgIQQ2d9vko7nrlXny0CoXT+CTnTmmfMqV0AlURO7lSHd
	Qc4wUSw1+YcxmbbwPSvIUA9+H3JxRWqlqxSMlMCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654593959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G2FhYOXs+4FLxu2chyQDcO6RRMp2kvw1WpFT6kWmo/o=;
	b=kWppGY/lHtOI9LcBw06+zuNSQki3lacjQUc71WWRNLHaq85pXw+5KQZatiQ1eJVU
	WbzMdMJmDISjCLpUsI27i2/YLafS9+VMmTfG5aFMf4KUD1UnHzNJBm/sfefUl0+/L2K
	PFShwMm97igoV0wI9W8/UD2cefjZlXuvQt1Je36E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d7c355a-e886827a-5a7c-430c-9fbe-834bd4b7d479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79cb75ca685c92737ca8335f41c1eee6ae106c27f31cac44ea79c89987abfacb
Date: Tue, 7 Jun 2022 09:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654593959
