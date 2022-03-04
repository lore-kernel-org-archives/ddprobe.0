Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CFCA33
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646388084;
	h=To:Subject:From:Message-Id:Date;
	bh=sqSAJOknM99Iss13A8QRq/OtgUAITRGvq4lVWOt8SBc=;
	b=RiMli5kwuTv9tk8Ddm9brfymgDMZoiwk1HmJelolR6k/zqaRYIcubfMb+e6PyaQS
	tWrO0P9/FbZmfMwdP/9P91bDcq0umW9r5HvqRd6b+C3BeOPUBWGKx1GqxjsapR2qLFf
	fatSDisANXbF+OxbPgosNGJeAIv8lnxAffNIFHJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646388084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sqSAJOknM99Iss13A8QRq/OtgUAITRGvq4lVWOt8SBc=;
	b=SKMPFmeXjiu4AZ2iihvZeTkF+jU/mVSMrvWgzZEq301k2etYUyI1rObpWVTXS9Ls
	Z47DwG+FlQ1Zrp7j9l5n64rH8pM58OyZBhy9+pIf+ujmSsDj+e+IAfzqLxIhFdnNdzb
	D6tlHCysNNlioR+Az8YLPQJ+BVPhtXVnb64HVNt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54607feb-86608a3f-aec0-438f-8e2b-19a795fdf3c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3c17137d48b7149401843e4ea55c33cbd987ded7d346e59f3ace287f65af3eb
Date: Fri, 4 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646388084
