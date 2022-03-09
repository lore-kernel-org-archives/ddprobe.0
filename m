Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D112415BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646812585;
	h=To:Subject:From:Message-Id:Date;
	bh=lJWphnANe4/6PMZBAcS5cWJQJWMOw2XIzeUxWVG3NQ0=;
	b=ZtOouJ6WixLSCYVVGMPdj45O4TZodAvpIj78QnRCrIx+rL6S0bHx2NSWDZg9HUum
	JdapLNJegbKVW0/d7xsGfBquYHWqbJNlWLUzL3t92Ki5Hd08c3ajRyvvB2kVDorXgXp
	5MxKsfWUuBIehKjgwfliBKVYJDpxT/1y2XmeiuPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646812585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lJWphnANe4/6PMZBAcS5cWJQJWMOw2XIzeUxWVG3NQ0=;
	b=lfKoI6z4/AUrzusCngGqyd85cC3JYotiLBXYAyvhgqRecul3a/dhcL9vwOcCpF64
	p2VbsEMJzXnvxdrQUx+6T7/eemTZAb/MTeqAHCbF7rTXfqoW33Bna1yVpxMHnYo39fL
	If6tmUuXvvFo4Vej8QHDxZDRCiOoIk0JdGTwZJNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6daddb65-56d879d8-aa18-4599-9550-9cfec15c851d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79cb7f66b6f66f01a73e03150d5751d323c7def952d704f0c9dca9d0e8a01e03
Date: Wed, 9 Mar 2022 07:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646812584
