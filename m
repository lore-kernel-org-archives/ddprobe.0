Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECEC7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661347252;
	h=To:Subject:From:Message-Id:Date;
	bh=sUNTIhZQYyHUlH0agwnPAtbiLTmqDfRM3hqDwjwoK44=;
	b=Op4X0sxoLpL3K8VjvH3qCScLeITDG2ILdURXqmtl7CiaCDYxaVBnb89VIM8JcOQf
	bT1Z6tLo/7tLoJRTTS0Dfd889iDY+U75ZWSDsVlo7HYedjwnOV0DKT3oQihpKgBrdnO
	CWirB9Tu21UCKZL3VDZRAhRbTshJNXBl4qoZKOiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661347252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sUNTIhZQYyHUlH0agwnPAtbiLTmqDfRM3hqDwjwoK44=;
	b=RLxrgSMjwOdyOqxH/wylLvynPCAUkQBWE7Q3SlReMbrQvHnngCGCOPwYTD1piCj+
	cSkyFu3CP3gACn0rTXnO96BeSaqrd2tCMmmyVA4UGSrP3tkX4Jk6zstiB7xUehFWSX3
	kcrTZbmZj+goavDHUncNSPygQ9lYnTmUxJAdrP90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0034991-83557008-bf83-41b8-a738-891c1c923419-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bf0724a7e9c51914ad71959ae21024d3dc00eecdcf235a05ed63a92910613fd
Date: Wed, 24 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661347252
