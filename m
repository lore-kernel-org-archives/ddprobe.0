Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A252D20E9
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646238985;
	h=To:Subject:From:Message-Id:Date;
	bh=s2Dtgnfxpd0dAo5H/32YOj/HYBMizehXVegQgE51Qdc=;
	b=Up2Pm1EyWPBVKir3Bs1Uqb/EShwrZCMQdDmD7EEKBVQmrS9SUM0q/KmEBLfbOQJA
	DFSZG7wDHKTKMMKuO3kbxYR/mkhP/EM8ovJhYoz1OdOjVSpZZav4tIbkdIlWFO3iywe
	Y1z82+vPIC/+Q6gu5O2uxHL4bq3RZOgWpZVDrUt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646238985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s2Dtgnfxpd0dAo5H/32YOj/HYBMizehXVegQgE51Qdc=;
	b=fns+TErqotwHw1Inc56r8XfN/J7cqe3fJeMw7Fan84gOnkbOSqkFgdlgVg9+GQ3b
	IpD9gUhTnkj0/v/WybKDhjAyFe1pDz/7OjGyLmJtH2xS3A72T3rrT/tp2SYSDovHKOr
	xnGa+u+AiA+Eof9+8egHdHqqn9EIS8P42KfSwrqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b7d6a53-07930182-4816-46d2-b244-8342043794bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 273f965e35f13c3fa658d56d533e5039b9af02f18b6dd49379d77a69a73fb9bb
Date: Wed, 2 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646238984
