Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E8F1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644978984;
	h=To:Subject:From:Message-Id:Date;
	bh=NOEjYEFqjP3y9lWOnWzEIy5fyRvPb4idvGJYc0hhRCg=;
	b=F4Y2TsBgTdkhi4fFiWVdQFrYufgiXxlC5uE8Zi6/88DvigijuVbWx2I+hB+cVOqY
	yrSdFIjlqqtkbhJ9fDPQDnvLws4cr7fnrjABdUuhrawfniSs/tlL0NbkWcWnHg7pEBs
	DLra4R6JUxdAj0Phh7IvDNEi0Hm+XcZ6jIh5TzcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644978984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NOEjYEFqjP3y9lWOnWzEIy5fyRvPb4idvGJYc0hhRCg=;
	b=VUNyhq2w0Tb7BXgMOyPO/k54WC0iIR0T4nuhsoiea/t74KqeponUX/pTPb0wl43H
	jIRV/qWhRU2eHHz+bkVHFng+Rmmo+8JrRrDCpd/6gL2vDd0MZ3c2IjCP493rq/uU/47
	7X1M099KyBpqbiw9+w2IS0GQssjKy1yTtU1EoUFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00635731-bace089c-4aec-4264-b856-a3b7dfac0f36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa085526a8eafc2cdd98c7e487da80765550b1ab312977325629612948245635
Date: Wed, 16 Feb 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644978984
