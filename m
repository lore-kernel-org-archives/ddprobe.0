Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28D2EA2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647222685;
	h=To:Subject:From:Message-Id:Date;
	bh=Q8F0tWfkpJ78SAZvny+B6L0QPK8OYxQFzLgnCuc6/AA=;
	b=NXQBM877cKVegxIzSdoNrcHLlYXg4400pLP6imxFlX5WlFpIDrgdJZ1gtNssj419
	eAOkbnoiGGhM2r+mK5IfO91wQ6GzTjxC4iOHjML+hMqr0cfJ88KPqPsnXwhYV/wP7TB
	VChdZia41VExtajmdAHutatE/ESHkTyRgFQwmQ0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647222685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q8F0tWfkpJ78SAZvny+B6L0QPK8OYxQFzLgnCuc6/AA=;
	b=RcUUufPLMeQ+WK7u7tXVUCKNJYn5np9EytDsEYCQGHStNFWRPEwSTbyxY7sLeFda
	um9Ebko7HkRHgUHB8PvPSfNDY3wF1lATklYn9COb8PduRUwLIVxg4fjr0vAKLvopZ6a
	a60WpnjOGCBKQZoQNIYgoRDKHHzqv3vKRhgb+Cuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f861f7c67-650d21f4-39ce-43ee-a083-4d502bb638e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c8de3b73076da9eab0b09c53bb0e6b497ddbcf836b1387aec2402a4af167bb7
Date: Mon, 14 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647222684
