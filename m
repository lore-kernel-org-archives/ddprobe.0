Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3916C5805
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656724612;
	h=To:Subject:From:Message-Id:Date;
	bh=chM5houb1EKuF/cUitQjd1bBeR4GvBHfEMrUmBA5SfA=;
	b=cL3LyMgMmthExdfEQz5XhbLP+sDI0vslpfYEcAKR7DYkE85GTitmO0oBYSF/4lF/
	S4hrZrwhTS/QF3G7RZVKESG4b87IcSZlEJ0pdv7pi0LlkqXUgnOAoTAFcsVvKHaBj4s
	pNalzlAPozteEXr5LfLM2JnO8vNwmBwzYo4PIDY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656724612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=chM5houb1EKuF/cUitQjd1bBeR4GvBHfEMrUmBA5SfA=;
	b=b/lE1ZOKeymsWselwcFEfucLXpEPN04MhYVaqNErsqRI2jLWyiIV5wy3nDhQhUPm
	+QWmu7KHWpXcwE/xI9sLY7IoHk3X83Z51BnJU9Svoe/VTi+HgxrmMzoSOX6ZK1ZKOPI
	h40K876zV1hCg4MH8dB06hc5CR0RD1lWbUNFhleU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc7b64f6-de5669bf-8dda-4472-a873-e15b4ca2845d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 166177cc137bd855c5d2edb1d4d34ff72548e78352b6e435b60f881ce745b300
Date: Sat, 2 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656724612
