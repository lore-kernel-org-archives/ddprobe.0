Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07B97B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 10:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650103978;
	h=To:Subject:From:Message-Id:Date;
	bh=9fmwQN8PXR+ZsZVSLvzC7tlWlf/SMFQ/0nm4hMC212I=;
	b=HQoLJaxp+wYZllQLq0Gv2HEMXRYqXuvczQJS59zpm6eOBYQLVhP6QO5yeuARODZl
	2k5oTHXr6SvujQ73/X6gwb6xvQBdPWPp+68NiFoRMDQbo5TUzbVpwmy1LF9R128ZtmU
	jOr7R4Kq3Zwgc0/UJXoF+G1KJGvEqF3UlhDKYPv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650103978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9fmwQN8PXR+ZsZVSLvzC7tlWlf/SMFQ/0nm4hMC212I=;
	b=aZmbUWQYfQUqKke+XbPeI9Fq5QY5+AZJCGVEc/U6QI/d1tVSrk4SR4/qmxa2FGry
	SCD+dL+yEUqW6HIrZKfWYV0UIz2XgAbStwnovKoRfcrL2HeXZBn5Ck5I4eCi6yyy/xA
	o6T9fcOC01ZGJ7Z0cwKk+KRZ9gx6IqoWugw6eA3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031dc892f-35dfefa4-2bc7-4c52-8112-54a46f040f17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37ac4c612bdbe9514a580cc398c0cd992d78f0570e006d4544510a79c29a6791
Date: Sat, 16 Apr 2022 10:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650103978
