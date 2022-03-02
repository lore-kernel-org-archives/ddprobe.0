Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DAC3FE3
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646241685;
	h=To:Subject:From:Message-Id:Date;
	bh=5TO++ipbYHhPUySBIRaODNSRJNAVYBvDFzJGzSgbZXM=;
	b=SmQ7BZCUZFAblFf8T4zC9Un0iRcTXS5EMKbNAtWvxZvote8+eCWX9+5FsaxJOYnP
	0H2XJpANYcDm6ZZOtqhRUVh5lhaSfsWTpIbBV1Bv+NnscapOoDiDkWOQpVCY7aap7a2
	v8h0lsesT43jESK6Q84lJO+tuZjmy7y3KFzQrE1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646241685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5TO++ipbYHhPUySBIRaODNSRJNAVYBvDFzJGzSgbZXM=;
	b=UVvi6Br7mHvKDkG1gqlaa7EB5aP3bPr5Qdx66a8eokyG1EcOpfuJDettg1PlZ0HR
	8/MX02HmVfkPHYJyIE7rc5cAuCD6a4htluKNBn0pSJR8y/VH66u/ajR/CTn+gvFTMJ8
	a8jVdcYQUWrETo/4Ocv3+bhDUoKmcgzUFQEAEbJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ba69d26-5f0233f4-0724-4b2a-88a4-71adc24fd18c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0043a6a258f845e4ef3a19012b08e0236f5368ce33f75416aa331c63ddeed0da
Date: Wed, 2 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646241684
