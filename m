Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4957A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 03:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644723055;
	h=To:Subject:From:Message-Id:Date;
	bh=xgw8Kmwty0BCVfp1QqpmMrdQk0cwBAASpUryiiZhjss=;
	b=XHykivrPu9fK5r9AYnj9oDPr0M5/85cK202yxLCsESg+Vq2vOTN7fKEryzFgaGOE
	ZCIKvo2zjoPHwvzvqEhC5H5VD0guLrC2qSjO06QIYmpJRVM5TKirV1xKdFrTt19DFwg
	dUEkXNbZHvYX9LAo3SED2iOWfElip3rBP9YqHcgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644723055;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xgw8Kmwty0BCVfp1QqpmMrdQk0cwBAASpUryiiZhjss=;
	b=dOEgV9CPIsC79THA/mV7IGwJfoKEYecaG7XrDdk4migWfhM+FAydaEiQjF5j8Vam
	NIvfRNVunrylDeKDD7Zpqa+zjlU0ORvKwm6qkWcRy9DY2arKzejwrAqAk2V/clLUukp
	n1N2QpYuFrxb6PJE93lvdg5XEmEtm+OANIJFnHK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef122290b-721f4272-2bfe-412c-9079-b86a4f428323-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c8de4fea4c259f1843e175ae54b39ad90619639b117b28c345e6c93c75fa5b6
Date: Sun, 13 Feb 2022 03:30:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644723054
