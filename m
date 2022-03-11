Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE85D7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646990484;
	h=To:Subject:From:Message-Id:Date;
	bh=xLB3PFkKxRqNAnm3wK4d9vFFiFVqewCdgPzCM2Bguqk=;
	b=Lw8W4AWqFtFjCX0q4x97y1KS10Vpu0EQtKBeKdXZ0B8fve7rYi0XcQwsEY5dIqyf
	bbEXC5orRx3okKV5UtPkXxn3hZGduZae8/taCcLCRnZCU9qeU1WykkLBUG27g44Cxtt
	J5OqzZ0QJOVhX67isFV0KeQYPQQQfGll8QRjFyOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646990484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xLB3PFkKxRqNAnm3wK4d9vFFiFVqewCdgPzCM2Bguqk=;
	b=ksWI04kofiqLJgpVSaxCWxBMuIfBvAL2cVLOX6Kpfg/aOOhvAxGhlhgiU266h1Tj
	Ze/40vF6uAy0OOiaUbBKfWzNuImWxi/Wm+sQUBWnKK8Lx/2I0Qx5nEGA+LvzKtUDSKS
	HnkvQH3FIMqAaNc9Jqr1ySdC59E4EDvEuSEQ8Cd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78486541-f7304734-4a69-42af-8d02-89a38a251b6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5081a85255a05764c95d427263461c15eecb21be4858b8340df320b8c32509c1
Date: Fri, 11 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646990484
