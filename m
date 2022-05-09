Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB811858
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652079478;
	h=To:Subject:From:Message-Id:Date;
	bh=Rk2tDgnPbMYcq1LbnLNyNZz9ug7lenWrHEOvOw7JeNw=;
	b=OpL4m/p4b33FHT0PeAIykNxf6bNXxkG3esdAWG3QBVJKjlklXQupaDH/9x6qLmLr
	xEC7ooi1u3fK9H3rc2wdeX8gyJb4V+8y58YCbd1WgBnnPDnVr3DlTV0AAnvs5Ht2PSu
	L9ulfxLuIh4iobBsXHigmjFFhwktQYy/m+HpHxgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652079478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rk2tDgnPbMYcq1LbnLNyNZz9ug7lenWrHEOvOw7JeNw=;
	b=YODQwHalO+K63nRfLZPwmL9VFq5YPZxrTAtRNbeyosVRTts68m/9Xo1xWWCpynzZ
	R9MSSqWlBd8RMtCSO+68qk1pcZHA/av9w5VWilTPgKjm42Rj2T+UFPT8fj4RIXhqR+t
	pBt2IO5f5vi/ZNtN/+grFY9K97gg7HQfl6MYLZ6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a79c45ff-527f7c4a-aeac-4dbd-8545-af66bb296922-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 945b4842b1492f21a7c616ec1b37b64f957af50e589361cdc65f7f1ba9ae9665
Date: Mon, 9 May 2022 06:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652079478
