Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7F2187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645018584;
	h=To:Subject:From:Message-Id:Date;
	bh=7ydO2P4R0XvKTQLWd6DSnW3ClwlJbggEf96nZu3REY8=;
	b=FKW6GI/YSwJUp4mZh9lDkKW3eKLaUb3DcBUfl+bbgyu2kGZaY9r4wPL0B0dCEZVu
	j85R412VCwUwtgJiymo747pX/dfbItzIVK5j/s68/rfT9cHZE8uZOyOWHsk/RSfwuNG
	lwAa1Bv9sciD5z8moINjWOIz9DbvL+mE5TLUSegw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645018584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ydO2P4R0XvKTQLWd6DSnW3ClwlJbggEf96nZu3REY8=;
	b=TUpyNRk9mIXRMzfWiaJC53CMDl0qxm1jLIfe4MoQn4mNkC05vfFnY8FzcT7vlrmq
	CfYFgnvTs6hdjXaC0sNUHfoozOp9eiSR2ryylLVhWBqOxIxai9MTe/rk0XFT0lDPvMz
	0WLd/vVAQSDdroFCHDWcRLDCPPJ57Swyex4f1rCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02bf96fe-25694dcf-cf30-41f7-84c3-94594c0887c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60f2250db708ea404f86bf00db1e6b5f77205e1e944f5ad57d418e0f2e213f71
Date: Wed, 16 Feb 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645018584
