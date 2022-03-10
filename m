Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0C17A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 06:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646892685;
	h=To:Subject:From:Message-Id:Date;
	bh=vrnLPqsbukiRdXNejQoJi2z/06/Z9H0OfWV/1Nell+Q=;
	b=MmORooJWNeKDHDdu4RDub39cG7hOERjoCdEpt7NIZxObfWzFerHuEF26fpzXIkFh
	uAky4InBZh3mMwdn9tMCTtoJpCwIJ80yNAiAKDdahty/hdkvqSXYdb6RcPtL4/bAZFe
	6+kvY7mubCfQW2EA24irasziIiIl/Cbr9pbaPGBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646892685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrnLPqsbukiRdXNejQoJi2z/06/Z9H0OfWV/1Nell+Q=;
	b=NcvaTqbNh5HHm5RRLW1Feml6FpAdmGX+SAN03+NzaRIp9ukF8bN10ZvPuBQ8/QfT
	DZNXf7ti4uc5bGqgDWH/Qm5xJqsvPzLA0rFHBHYYSdV/+jkeUmmywUG2MYO5kW6z8l8
	K61R2t9lupMriDpXZCTinBpAkxX1MuIItJRVbYTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72741625-78823080-cef6-4444-8d62-49daf2907632-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7513e95357e82d4382359967e8c0e214c6c045542b3339931d021cac14ec7e75
Date: Thu, 10 Mar 2022 06:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646892684
