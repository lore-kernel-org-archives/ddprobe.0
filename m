Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804E1184D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645697184;
	h=To:Subject:From:Message-Id:Date;
	bh=wAU3X3VSV9M4nBj4RT9GC8u76hlwO0joG00q7iXbsCY=;
	b=g5r1aOu5b8AQrw6MXSpf8ehpTmRiY5Wb0GSFwZx2whSl0fAXdwdbhO+gQMnsA1PN
	xuhjODVCtqEOjLMygOonVg9ro8gqsm6Ugr+W9gfhQ4IX5sqe/G6VLR7/o8jkFM9Z0rS
	GS7aNHPaw73LPBO0SdFta0b2FuS31hfyr+C42mJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645697184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAU3X3VSV9M4nBj4RT9GC8u76hlwO0joG00q7iXbsCY=;
	b=ZEBEGII5SjlzPE3qE2UKBzyXbOOHaPfKSi7ok8PKFgk2VeYOOGfKDAPmC3zpmx8N
	+j+NnNjcXuURiFwmNrIQCKbsFIcakMRla5tjYdVF/75scb/hWLYELBeNcl0G2v6a71A
	XnCXxOQF5BRDKa6XXPaypqLOVkJWXaiVAVToESTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b3233f7-cd6b62b8-91e6-484f-ae04-a24b2c9e48d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4bc45ca4a0bee119cd560cf70511798f33e739fa0dee424ef9831a51c3f1fa7
Date: Thu, 24 Feb 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645697184
