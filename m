Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C0F2F2E
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645187484;
	h=To:Subject:From:Message-Id:Date;
	bh=rcf+WDDh4qa6b274wj2MNfZ7ZlhTc4TPptUgjGBkb74=;
	b=jCRtFY8eM9QO6wi39PCGR78AxvVYpvCqmNoXaVWE682Z4B1f2auiEKnYaCphoIuT
	pm2OCuE7caTh4ivLn8w2Qtnc7WXMYYXxRiDNSREMeMv+CmOMkuGoZywwpFDl0iVY4MW
	xgZmlq72v7gtj3qKSC2mfwYI4214KXDlZvOH+Ecw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645187484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rcf+WDDh4qa6b274wj2MNfZ7ZlhTc4TPptUgjGBkb74=;
	b=J6a2gRrJiECBvT63a0i5bBMebDY7ugjYLtBVrhZvmiQcFtu11YA6jzvbMYn8ahf4
	HYfDg7oJ3ThInWUrd8MSI9w3MIBjGMKasDPGPqiBcBwrXAlJAR+BCFya6YenrBmE7tg
	P5Q1SbTeI88inlcpsEhRq0A3xubNchR8TGAmnhLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cd0cc5c-c72e72e1-1b03-4509-abea-fb84f66d96d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f240beb5a443c599cdb5366c05456fb37c1be36017c8e3ab70e558f1fa6be28
Date: Fri, 18 Feb 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645187484
