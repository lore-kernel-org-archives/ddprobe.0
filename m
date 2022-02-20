Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F50817E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645332384;
	h=To:Subject:From:Message-Id:Date;
	bh=5e+b2nAH+2YVRdsdzEEULDXX2LKBPCBCNZxzoGNdxOs=;
	b=Pvn1BICBJ4wTSixE9c8LWmp1V8vRm1Ehk4sCJyMZLJ09+3eJQYhe73K53hg0kgj8
	TOguZAxGQPOLkUrn92qxgn8NUweTA5wJJMwUQ+n0ut6rerCWupmp6DahQxxzPwFketE
	vStkH7IBFTiLor+Ia8VG/ZPZIe7S8gIDBhxNJQNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645332384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5e+b2nAH+2YVRdsdzEEULDXX2LKBPCBCNZxzoGNdxOs=;
	b=RAzticp94IsAZ/XJyZ56uljHxLJinqADfN3D+cbR9xFdTSgpQJ+a4UwDHK75Ohkr
	i47aEQmxgeCiW5KSv0ywpiEqb/9o7uxdt7OekyeeLY7yFArbwMBlQcvBxapgFZkfKhy
	k7S3M4uu2rwyybi5nF8NojZf/NkoMUtthlGcRkZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1573cbd2-b3eeea23-27c2-452f-8ec3-45a84183a5b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a782a06d602c93fca8789e22f541eb45d8dc1f2b55129776ae717900e0ecb097
Date: Sun, 20 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645332384
