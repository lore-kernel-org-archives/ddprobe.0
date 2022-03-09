Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD8215D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646815284;
	h=To:Subject:From:Message-Id:Date;
	bh=PN2VLgTW1qFmY1Cy8XSMLA3osf2RsIjHiDftl4oJevo=;
	b=BdUtjqQYJlkCMXKUo5yUVumv3DKLBR6PDm0/+ktJtRJCSlmgIF7kSUMCKWJ9PBJo
	iqH9P0O4+fQfpyGi5748ofkyVnKPMomIIoP2b43CvtGgwCAzaq51pu8ndIm/zXh7RXX
	HVG6AlR8afLjAw1EoHn/wEdXTzUFW7KCuHkMmU90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646815284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PN2VLgTW1qFmY1Cy8XSMLA3osf2RsIjHiDftl4oJevo=;
	b=OUpKCEO0QW5thqIxKKDJ1hb8hYBtPx5y/AoxGMIWAHwl1SfKv6g8tcQAzVvjt7Xm
	CGpmNnKDKh0+X84Ah0X5us5F9xgFEEeqrzsC6YF0EAW2KlE1+zcRFZYjxN6RzkUVrg+
	Nl/7IgMTVaWvF+bII3GwHC4YE/9DmRWR76Jug7tM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6dd70e1f-74e8dc4b-5a2c-4f3d-b4a4-728afa8024c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc4c4d12ac026f041eb72c72e8c1afdcf3f46c4da2d06b32668dc62d7702fe2
Date: Wed, 9 Mar 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646815284
