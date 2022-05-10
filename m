Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367E028E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 15:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652198159;
	h=To:Subject:From:Message-Id:Date;
	bh=UCQfNYtC0ztxwjpxc+4DsE+x++sVxyKNMlYQ3OJTeBo=;
	b=BMZJfx/ACm6fqXgyuvBlmmIlbmrqn6dT1x1hWpr+f7E+BxtKwVxvt9D+veJb4lYQ
	eugPAASXCE7ZPrpT+f6sfp/x2uOhSCl18D9gpG3PkrKuvsgJBBBGVr+qlFmZPjaW0oK
	+YrMkSaJ8fHQBKtH+Txo8HR/Y+PFy/aTC0aiD9ak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652198159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UCQfNYtC0ztxwjpxc+4DsE+x++sVxyKNMlYQ3OJTeBo=;
	b=c80jukMdZGgZoLDJ4OvkH1D259/qAL/RPTPBrQ0mZ9rbzVjt9aWz8SIQRr71b0rL
	Ki+Ci1SavslZTyJqvw28hxt8JU+ymcQZii2hPMRk6jHIbT2Onn9uIkVMwmj4Teo5jKK
	mGDSCo5b94zKHxJLkForq3Gub487jY0a7M/iM528=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aeaf33b8-077dfe21-96c2-45cb-94f7-a0df539abe73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84288d6b07d79e8a11df2abd04f8049d4d1e836bc70857e979c0054131b21792
Date: Tue, 10 May 2022 15:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652198159
