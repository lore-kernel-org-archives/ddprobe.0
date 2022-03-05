Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0C57C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646486784;
	h=To:Subject:From:Message-Id:Date;
	bh=+ePrrjt+JkTgMtKGZTAcgpXxlzd9ymUZW82KbvYZ2d8=;
	b=F82ZQGaVd/NseEdRAY2uaEHLj0/VScuHdvPkLxQi4IoimnJFD9l7/QeLXVDUZFo8
	F2clfuYG3VI4pzW+irUTAm+SHl4fG0bps1EHaKJ+x9qKD9dy2FNixPUq2GADGN3iae1
	dEp/cUGzg2/z5K2rynN/IIvAIypYYWkU7HGDIA4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646486784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ePrrjt+JkTgMtKGZTAcgpXxlzd9ymUZW82KbvYZ2d8=;
	b=YI9QsHw4Dyxfdb3S1xlILNUjtVG5qRPhaSFcFrFk3RG3P14LOL4EmBqA22nsFuCw
	E7v2llNpeSwcbJ7S4A/cOVVfo8glanqB9Gw81M75+yLBVcflP84ml1CfS2q0ekZ3uAm
	mb+K/XIqXJ+YH+qWtULHckvvbrWRPpICyhH2uoqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a428b22-5761fa50-f076-42f1-8f42-534284f4bd56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e096d796b1587d2f22a7ec2384505edf1a07f653fb1fa3263adbfa256ee0fbd
Date: Sat, 5 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646486784
