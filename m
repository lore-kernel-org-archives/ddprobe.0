Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E950C7C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645938685;
	h=To:Subject:From:Message-Id:Date;
	bh=NkApLtF3yy/MQO/91yto1FB43dKiSBdUSy1NaHllcGE=;
	b=mYgWA49OkaRvHthLLajGJeXpj9/HOH+/QK5kw/q/jBMGlyTfHVvP6/ThRZ5EHLW1
	kr71XnR+pcfgSTe4SsRE8UsPdXHpyo7TOsFmwdblP+e7/y9SVQMaL8bL4MxyxZbjVDH
	wx1X44r7nCuF1oqFSrN9YCOdy0g3269Eu2FBZmc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645938685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NkApLtF3yy/MQO/91yto1FB43dKiSBdUSy1NaHllcGE=;
	b=dEl+yD2ea3CUz4dStElZAIF7f9bF9X0HrBJWYV9VuD6EUPprZaAYdvNUAeigpOvO
	BcbKxrom/S1O9g5lCWSMYQdlvPlNfL64GV/PHrw92vQ7iiR/UJUsv6suac1hng8z6t6
	8HMATFau2J45NJeerxVBDO2dJNPUXlWVb68sIT60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3997339c-00d085d3-06ba-41a8-9dfb-0a4e261259e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc9bf009b23d4ab2d1519e411e91fa989a27c2fbae85f4ba751b05cdecc3e17c
Date: Sun, 27 Feb 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645938684
