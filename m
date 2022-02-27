Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872A72F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645974385;
	h=To:Subject:From:Message-Id:Date;
	bh=A9a+H9UmudP2EZcC1wiw1KZOor8OFqyj6K9FkgmEFfM=;
	b=GsKaACDCHn7GJBwSJNS1t4+cundlSUJHatr4AD52crgAk8WhhcDn4F/X9CHwmTNV
	W83BbrAccUY0di5dP8K8Qn1kKA0wz/ShhLvv3H+tyj0FE6Bcpea7jH+Ydb8RiyVS0ec
	Nd9XjSsL0BtfOxUoOrJWo4gSFEbsmeyM3hsfR3LA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645974385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A9a+H9UmudP2EZcC1wiw1KZOor8OFqyj6K9FkgmEFfM=;
	b=hJNvHPgWyb7/Lx8ZvvOU7cENWWpuX+oVL2evjAzl7+HXM0kkThis1MnEzEANPpdm
	9u0Kmc9+LxeG/YeziX/6o/4cGY3h0jhwAS5+d0/eEkztbjSdR+4EAdQNuoAmeAhnY3x
	5bRnG1CQ+OLdQxbD77uO/ShnhNHmL64J2ZW4JZOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bb7f078-38a82619-5ff7-4634-876d-543a66731170-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37c966e968a171abeb80db949307548465fcadd7f2ef18ff741a1a6cd0afefaa
Date: Sun, 27 Feb 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645974384
