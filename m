Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C313E7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645719685;
	h=To:Subject:From:Message-Id:Date;
	bh=a8pU+Y7d7E6e/3r8Ic9Ojt1DEjV0S2W6GSWhpKvGejw=;
	b=ZGasx1u1SaOmecsMiDBydEFA7aHWvOF/MY4wD34cwDX13R0yqp+7LYVRAH3RzBwL
	SGaugQWoxsT8aF6V0Kdh4NpedveLxhZSzYFzTCM48Ye6Hd6k7Ia+EMskmuFMotfxhE/
	oExSk6dEPby7KWA017JDA1jTAh+tJovldv1DVIOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645719685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a8pU+Y7d7E6e/3r8Ic9Ojt1DEjV0S2W6GSWhpKvGejw=;
	b=DZ28lrkT/Y1YSp86WgiLe74nTnrJ7PudAWZXAF4PVhLpse/bvWhKWnVdisi9+YPq
	jHKMq9bJNaAx1YY2TeNoCreL3WQaLgf41umnJIJzk6XBXWCkJ8N+bqXOUAmG+QlwdhD
	HfzsGDtZTVE3z2IeXYLVTsEiYkqKa1E4T7pWWImU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c8986eb-7387b6f1-1b77-42a3-9e30-2c78a992dcdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 105ded86f95da818b03c6d6713d513e631ed69d61befe1f1d30faf2bebf1e96e
Date: Thu, 24 Feb 2022 16:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645719684
