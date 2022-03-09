Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCB15127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646863584;
	h=To:Subject:From:Message-Id:Date;
	bh=Lb3hs9lSymFFXtiTI2JWsXaqDiOj+j0TTJ7kMEO0+jU=;
	b=VKJd9AXgNUStwiHGAA0V1H0fAV1vKkMJXYIkaVVIF9TYtdD+LKPwMPxaU7xQYcDS
	HM4phWi4o/WCUAHsPNJKgo+SKnQG4Zu/BkhdWOuFVZF6BblVVxPjPO0z8kkjZ3NbEXm
	SSDGfH3o2ZUG0Fh3IRXAZJnAjwaN1QnHjg1QIjs8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646863584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lb3hs9lSymFFXtiTI2JWsXaqDiOj+j0TTJ7kMEO0+jU=;
	b=butQxVJW25hn2R7n+X7LgVfJs+h6YMAVrOKJS5mNhQQs9O0N1otG95p7mHXEdILi
	rdo2iLl0iSy2WYrI6HnOe/jX3F5ZtWdapFmObC72LCDVVSzcJgB2r70zQaWQDQ0RMvB
	icX+yL9lE1akhmVwq19kFBec8rwSC5sBzafOXKFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70b80dfd-199569ec-608d-4f51-b07a-507a3212304f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21a0221523c47bd9c462ddcb7119bb43f3b7e2f3e5efde26ce26039b8e6e278b
Date: Wed, 9 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646863584
