Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEA87A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646900185;
	h=To:Subject:From:Message-Id:Date;
	bh=dq0UHeWwr6xIN68cMz1UVlfCmcXqOTdS60NTtU2GBMc=;
	b=DfMmQ5btI+UgKzZnqcdOKvQzX/OOq6FE9CnghTdWh6MJCVLnAAyCREJq3fHUD+Q3
	7Xz6DBaoDZeNo/1fl5e4YxdPCP/gvwQJJfERUe1lmCR0WsydNcnkSq/iy+l0Z3+cJAd
	xH3+cqasXh9ZNo6tBpBCBDv3KxxcsmjNdvgffZBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646900185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dq0UHeWwr6xIN68cMz1UVlfCmcXqOTdS60NTtU2GBMc=;
	b=i400EZMk3a59df7g7iQHRKBy75ghgFzn9MGM9j9KCacxJL8S/TqrQgRAJty58sbi
	gAtifHaAgPyIRBGVyC9lI0smqO2ojUBDVrFXgEXqufgZqz/1Sx7PVOuk45Gs7wv3dhv
	jct/Q6atFEQZQ/XTjqrBcjzqNFWr0CFPcfULCj8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72e686bf-b046675f-1aaa-4898-8518-303269e39d87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d553f0a6db131bd00466e39458dfa9b1b0cd02c23f8c956fa222402d9cccb6a
Date: Thu, 10 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646900184
