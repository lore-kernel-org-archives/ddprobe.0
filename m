Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E447E
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646728584;
	h=To:Subject:From:Message-Id:Date;
	bh=uvHleOFBjwlUAxx1wfXQpxPwV+2hUsSH5+MMABiqlWk=;
	b=Z2JHybFkT8dddau8PikoFznYHm4Fz+ylB944KVm7zi0X4kpRKjWCTdFtP3soDdeZ
	xNkKJ9db7wLSqahDSCGkvNGh+2BHeov3+GxR4cmHmhEuAMA+jTeashnPlM+3caRrk5B
	YcvFU4hdDriPNWB4ddmyIl/8zS3WJ0IyIguxKJdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646728584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uvHleOFBjwlUAxx1wfXQpxPwV+2hUsSH5+MMABiqlWk=;
	b=hA3DA5JO4OdOEiCpYKwXtJAQjCPi0yByalY20eJ9dCyw30GQvSUAGrLrFGuxIn/j
	Iuniv1PhI6fm/1nfCH+9cRITMIHrnWRICS9p97HbxgACj+R4i59wHyrwEp8Ny49Q15q
	skkLGixmf2GHX1KnOGjOhjsCI0dQkrJZc+qpahkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68ac1e18-2bf3151a-b8d5-414a-a7eb-5fe0d11584df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df0e0932372aecccc5bac3a9fa1eb8aed3148331e29c8d94b8c96c0b6bad0972
Date: Tue, 8 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646728584
