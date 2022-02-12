Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC0B7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 20:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644696061;
	h=To:Subject:From:Message-Id:Date;
	bh=rEiovuldgX6LjAOljFZXYPyhMkXetvFrmRtsKX9CldU=;
	b=D60NNf+5kGrXdKtVlAM7JDctpQBgfaAlBsJdUjKKFB9zAXJRf+63FuR4OhvNuvUU
	g+tPokwDRz/1rmQqi17y/BNzvcHY7zrNCWyUVDb0CirwxCOS3DOhulC5mT5eblbrE1S
	BLAqrTOxBY2wACBmQe4T/cPhjXf22uLpnlUKbk4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644696061;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rEiovuldgX6LjAOljFZXYPyhMkXetvFrmRtsKX9CldU=;
	b=JRPWdRld5jGDyxMqJr3bsB1iHYHIVbBrn2XRbY1Uz1X1+rmfM8qLElqmAcXoNkfK
	ArET8vgd91+81s07mV2j+m55D8uN5XZJqKHRWn8k7h8SH4Sg4eFueQLYBWKdJm5y9T7
	K75MERyS0R4dil5BeC69cPLXaydrZ96V78Xktddw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef864389-c560308b-0819-4a89-bbff-a08373167457-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 587c76a53efa7f6303a3efcfa60e04f18ce386e4953da8eade934f254d371bed
Date: Sat, 12 Feb 2022 20:01:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644696060
