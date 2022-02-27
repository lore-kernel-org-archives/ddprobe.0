Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2C27C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645940185;
	h=To:Subject:From:Message-Id:Date;
	bh=RcIXpuixje4uoLEdwpHpkqPL6uFSyCIG6plKi2scJNc=;
	b=hHfYuvAWwuQ68+sEgPF9BxSNNZMfb3frIIKOlksLNhqcNFX08UVvEYqGb6fSGx19
	2tmTP5tMBBPl9ptTzp2EiTTizaJhkQf9CLSOSzvip8z7QgFYQJZOSeMyQsAol/saq3I
	p0h81MBwyEv8CXIQePXuW9ISjfP5G0uxuf86KhUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645940185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RcIXpuixje4uoLEdwpHpkqPL6uFSyCIG6plKi2scJNc=;
	b=RPKRCv2UYhBa71o2rrn14b4noOW/CZSiTalfJ7aoKCFaA/Yog5J2Cj++aKSkXdNf
	QXwnASUAUtocvrSj27aWSi0H1lyem+rUnGAg3pT0WliQ6Y0OBsWmk/HDLXcM+7YeywX
	omMBKn2VDCPv6l29haJNb07pRhIz7LQYwZqKMpdE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39ae178a-2ad8120a-62ed-4811-bb81-74b5904d6d13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 262318da36de169e5a36a256e78853cfbb43df7bacfa125297cab1d25155eb51
Date: Sun, 27 Feb 2022 05:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645940184
