Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C542539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645281084;
	h=To:Subject:From:Message-Id:Date;
	bh=jLlX8pxXJgCOT97+Gaqrwy0UGBL1MlE44TA+ChJheQw=;
	b=jN799ZCW7QEbVUrcwstvCn5ErKco4cyVdKAzhpX+BmkLP66qNXWUIN1NkgimOiIP
	iuJIwuVDMizt3cJsE8bxQhWsdcrnRirZ6TTDrfZ7PRMgLlquHH4suoZkU8PqnM5a90G
	KYr2D/FnbGvRDeozYV1uLTcjv4bDrGBIQA/h/LuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645281084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jLlX8pxXJgCOT97+Gaqrwy0UGBL1MlE44TA+ChJheQw=;
	b=TcTqot4yDg52zZM/IWjo2O3esju5Hgxzs1yOgk7lwSUG0p0SuoxBYrR9wYLe5J/N
	4YVLll80LPff6ufMpGALKXSHlzsDs8YRz/5WptAooSDDdF7H8QJ89x47zF72isl+r4I
	5SlfjFHYR3y8oynxx6v7DgKmzr/lmhKYJYYZyxLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12650576-5f3fc25e-fbda-4b5b-9368-8bd304e2121e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d9f7535a7191797978cf302419aab49844be8cf2ca27d26ccc1a5e07c2b32a0
Date: Sat, 19 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645281084
