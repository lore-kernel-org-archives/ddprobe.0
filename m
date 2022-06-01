Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC21645
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 22:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654122899;
	h=To:Subject:From:Message-Id:Date;
	bh=q4Te0U6VIyQ7IDKTJ2G+IOSpyMMrUcVONxry0mMROaI=;
	b=RGStqBq3ZlmwbyVlEKgjwLf8WzqY8FrN7OQE3ucf6Sh/Q6nK9eS8eEj4lnCqwQD5
	YAo9WGc63Rpp8eXicCAKRjY0C/NYbNarS2CHV4YzEyk5Gy8i5YvHyOR/t7EjQI2O/kR
	IZiq4yGNrvxLqsnEfatuw7QLqOVB+5WNSPbb6Xc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654122899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q4Te0U6VIyQ7IDKTJ2G+IOSpyMMrUcVONxry0mMROaI=;
	b=PJUBrNRYKPp1EuNFN/PYG9xVYRxZ6DtYEXMDKsAodhnsdv6hoQGsSJ/bOI5JboW0
	3uaXqw7pfAUPsm9rPVcvdCPgmMGKtE4ZPoyNpi+TZYr8GzTnfAfbAG8ql4HCKFuwvCt
	H50u3PQL4YEylfCYIGmPG5OCDWa6GPZu6BYYvWe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181216867e9-9bb4cb63-25b3-4ffc-a9d0-b3235369efc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de7bf68c32a93e68f1bb7fb0ea433c1066b26db267944db38145cd19ecdbe111
Date: Wed, 1 Jun 2022 22:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654122899
