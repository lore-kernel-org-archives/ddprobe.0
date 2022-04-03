Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E686C1FC6
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 08:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648975738;
	h=To:Subject:From:Message-Id:Date;
	bh=zEs5O/Dz3PpUshkS5E6QdougGr5mbn1Jkwbp7ZonGoI=;
	b=bxOjWdmOkOlJdwjEJda4x0m4C5VXY/N/4TJ/HoJpcB5JlfaVvv4JYESoSgE/AfO/
	lCMkI2CNH+yZlI41xiyTIxsBAlYRe1NBZOKk11NIaMHCO0S1xDD4CZbWrTgSJt+DnuX
	LFa8Yfyoz9RD1QFNTwKsU2ZU8ZG6FW0z7tqJZK8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648975738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zEs5O/Dz3PpUshkS5E6QdougGr5mbn1Jkwbp7ZonGoI=;
	b=ZtxqcdM8V2TP/sv8GrOfmu9I7+/mMVOJmc6VGuSR9pELMALHUkdG36P7ebbAcCkk
	nONZ4gPPTDFSmMBkVrTL86URrd93puV9dtp8qdfzsMOltdM56I8yNqHDAFKtH4XXlbh
	fUMHly9PyXvr/fa3VpqMmOEqZ3Z5XsuWFkJkPGog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fee9cf56d-e48d4f77-ba38-4620-a4c5-1d78b867ea91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eacfe0d84dd9b2f10764a3c523ce207dcf7e06615b9b973b54c82a8cb4d08ae
Date: Sun, 3 Apr 2022 08:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648975738
