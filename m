Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74D87A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646100685;
	h=To:Subject:From:Message-Id:Date;
	bh=fJWaCX1+2bjCrmqSXNrnK3mIXXk1CDSpfmez0UeH31E=;
	b=Z4KfOxEJYKocGeSdqQikJNHzz7k7W94AtVNhnw4xOILJMvnieLusZQOkU4c/yUYs
	WhMaVrSngs0NKYDy5Tt8jUOF9OkhOnnmaQSqs8KYHAlKcuPpdpJCIMgjWYMnW9Wp1Cf
	5JbC1rPtv2gWT48WrUBdFIZejj0XybqCRYMUmnJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646100685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fJWaCX1+2bjCrmqSXNrnK3mIXXk1CDSpfmez0UeH31E=;
	b=C2v4pmmWw8I1AIJsggR6TPxxdC8bpyZM8cMwrwpxB6cvT5sgJovTxU3WUV9CY6E2
	SrbR0Vz8kKYz3ip+NSzy7WB1OPSTulzLY0VHe2fH/S/hB43NxtVLNSWP3qmek0wHbq2
	ksUEyeapwGilcD1IfbUcUc619jsnWvpyttPkvL80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f433f1fd4-c702eccd-cbb7-43f9-a1d5-f8240d3152a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6599173ec3fadfcb3f9cc05b777b05868bcdd5a6e54af65ffdfa30f859e2ead5
Date: Tue, 1 Mar 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646100684
