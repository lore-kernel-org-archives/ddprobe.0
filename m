Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1D47A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646398885;
	h=To:Subject:From:Message-Id:Date;
	bh=8mpAus8XmzfdLuXTAFVAFW3QcfBgYNQvt7G3629GBrU=;
	b=Kf7lJCrad/5D712RBNsidmXaQqRuFwmMuLYY4G8MHsGZSINfO2lDEEc6/vWOeNLG
	+bctwjKYfJy93fOrvyGqgqkUqfmXRAM2VlhbfA/WkPMWJlkgJm94ePMVU536SQzX1aC
	/DazI7CPcNHONRnkcGmXc9GDLv7TpEPJcSXd8yf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646398885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8mpAus8XmzfdLuXTAFVAFW3QcfBgYNQvt7G3629GBrU=;
	b=Q0FupH81qfl8FdLsAaOAGnYvDLKDgifI6ev2+YcaVNqKsN5CAdXsA+kA61r8NSB6
	3Uu3c9iK/Yu0TwR4YsaOfe/LfC2DSv6KbuizUBs1u4aqgstpUGmk/VChLwd3oqqKa/3
	RcY7SGtEiLXWPtLBvW5LVtkMxPel/waGU7IJNSlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55054bc8-057a0d3e-e342-4111-9ba5-fd038bc730a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aba55d1ac1b9178cc99a78c9508c434108488a143b1373f04bd95a40bcdee79a
Date: Fri, 4 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646398884
