Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1835A7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 19:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644781829;
	h=To:Subject:From:Message-Id:Date;
	bh=JnymhukTFlSeaC3kdDFh2bRqEsVtJshB+bS64/v43sU=;
	b=hRaqWRyb0b3TwxP3UxvaC2XGfoKMZhtnGrT2iNjvyqiPA9T2PGw6uSvUJ9oZUU1T
	x21H7FVCgPIRiIZzH8BwXrfMS4DIWbLla8VrdQrWG0HhP33RzAfmRMx+2eu32h+d2Gh
	yya2R88EltIE8+cp5FobO0UE4d7dVRYcJf1+DkSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644781829;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JnymhukTFlSeaC3kdDFh2bRqEsVtJshB+bS64/v43sU=;
	b=hc+0UaQJoA1LqaCk4jduQ5+8YUYzgzbVyEIqwKO/haJ4rDo9vON/M9DiNQVA9Ydt
	MAc0Y6ZKzkn2Aw3zKlTQ2ebKh5ij1rrYIkIwBKKy+k58NAyTAqrGpMQ4HEk4Yka7RBV
	5jL6vTSKj2qkmJ3uC6Rdbve9YlHYWWm+nW0R9MHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4a2fca3-05a79523-7dcd-42d1-b2e9-bcabfef95bca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee23ec2ba604fd4e723acc0fd7a37903dc667b2855c8ca6ed907d5cffd591deb
Date: Sun, 13 Feb 2022 19:50:29 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644781829
