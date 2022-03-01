Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E97180
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646117184;
	h=To:Subject:From:Message-Id:Date;
	bh=fGnmYO0wQHigS7CAJYRbUrrGoMz6te1ewvqg2HiVpb0=;
	b=m2ZCMwM4v+sbxFPW3XLL8p0sBPmMzdk8LzJ7t4l/iQeJ6i5xpjqkwfi9/9tIJ9la
	f2FvgksY8TTueM6+hKqq4NvY5KvTsx9lDSD3zu4LT5KfFAEnO1PZWsegVmOENFpJH4Z
	JZ/HmrP+dL3F/8MbEkDDJOSIkSNpnScQs6QtbEDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646117184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fGnmYO0wQHigS7CAJYRbUrrGoMz6te1ewvqg2HiVpb0=;
	b=ICgbfc+3mAdeG4W2kwaYw/lAEV1zX95ExRqNkza5b53hB8P2oCkQu4985kJ/nPEX
	8hgl8kWmD19ZflZzp0MUBv+VhACSwTSI1tFqdRI8j4cu+ed+KjzKS2WPNeui1udU9x9
	+UBMmU5y3M8oVeapxj6XEqv6G24ech191/ukXWm0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f443ae52a-f3782340-7b77-42b1-827b-c12b1454ca94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14d5b4d6bbbc0b884e6dae077481265500dca6c2a58fd2d69b20be886c338aa2
Date: Tue, 1 Mar 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646117184
