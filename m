Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895A336A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647046584;
	h=To:Subject:From:Message-Id:Date;
	bh=7IW3ps8KSzUfTGHjigeZU4koOMJtyqjUCxTu70+V/aQ=;
	b=B+uuIBTzo1ba8kP9mPW+Vmov6J4z41VblQ3uqEPW0CkA6F/UJl/AhpdD3FN+UuYQ
	qYkCXwCI3KSKmMeCGzi92Lpq9cvTiX0rJNWhlBQW2R8yFmZ6do5PqqGWPkLP043B1Kw
	Y3620LEjz4NxaN0w2QcI4vMfviPp5KONcjtxIHFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647046584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7IW3ps8KSzUfTGHjigeZU4koOMJtyqjUCxTu70+V/aQ=;
	b=krItVmf2Hiix8ueKrx6vlyQXEg8OCsp3tRYVx5OzZ4XCgJjG9w4lFe1cy0EZ4wIB
	JrYmO6HrNRgqZjbF4MxakG8OStocxpC/Hz4UVuAio+cZBn+L/j7VgsFQ6v+CEkqfE2a
	9bmcoOh70M5hcCIZvjGFDZMGtL2rHkAEDzHhSY4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ba069e4-47b0d05b-1f71-493f-b230-8ed1019c5595-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8472a9c6f04c8f5de7037644911455aed7442a5479f67b44b4cd8c91700c478
Date: Sat, 12 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647046584
