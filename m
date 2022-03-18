Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD5515AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647568284;
	h=To:Subject:From:Message-Id:Date;
	bh=CV0y275QKGTe+h0WoB4jpxUN0i5M6eRACmHeh6iOUsg=;
	b=g6GVY0Wr8bz8dMwWrk4qRJTwHFgHWZGwmlHQhnCuiagmOVO9tQ0+3CtfYLY0aQVZ
	P5mt/Q0FtTDGSXv4wEAbpti4mSQD2yV1AzfS92AkYuNfSA3c61a7Zd6Tw/6XJtEjUYd
	rChXhLZDMCdqNOkyzFummRoPGWWnfVJlv/7pnMK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647568284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CV0y275QKGTe+h0WoB4jpxUN0i5M6eRACmHeh6iOUsg=;
	b=McfTjqn/Ay1JQMi5MRVT6JJgpBYdaniJ1ZTFyOYIWLldAe+aAo+PvnZlil+4ol3V
	+6IQLBVrbbR3UZGXOO9IML6WLA700+5Af0mupkqgOZIAIG1OrZX5oaaCCbu4IHBHlBl
	7Xp75MtBBVs7Ivh+gbWNG/y1N9dN21V2Qvf474N4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ab8ec89-d9fd54ed-5260-4471-b3c6-1ea3ad57120b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e1ade6fd703a9fa0887d153ca6317d54fb9d028fe8a2373155300b8a3ed49c9
Date: Fri, 18 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647568284
