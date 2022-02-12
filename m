Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C227D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 21:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644700815;
	h=To:Subject:From:Message-Id:Date;
	bh=aE62yqNh0gXANTJTGaaww3qhkhXBvxtjLhIhfwqBfhA=;
	b=HpKE5Y7lpglZ4PXyD8clr4MhYk29MJbfi+bSZ+/I35OLTWDSZaJ4fpszZp4thhAt
	x0mEibjAhToeb+HkUvqta4AZCIGYKpcQSXR6BZfVhUWPHPXyqbmm668vTe32xCGDpwl
	hAc2nDpfWYtbWnIuS36gP+FV0zDzI/4A7DEHZJMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644700815;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aE62yqNh0gXANTJTGaaww3qhkhXBvxtjLhIhfwqBfhA=;
	b=e6Qm0SfgqUmoFFI6R8ugJkuIYRweWh2ar4gV7ooxK03VojVDZzMQdXKU8ovewepr
	1Ansib4hNSgslGx5WYPOA/cnJsGXBK/yF4Cye05vzRzTo7tm8+yJzKr7ozP5hUdVkyl
	qt2Ez95Hvr0RjTEWUDIpq11tjfyVOO+biKHa6N/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eefcecec8-b37037b0-e04b-4ab8-ad80-48e6346ac465-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 690fe0d92c5793da83b74134bd737dc0a1664cf4db118a1c0b5da4786dae4fd5
Date: Sat, 12 Feb 2022 21:20:15 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644700814
