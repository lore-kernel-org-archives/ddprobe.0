Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5694A7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646970684;
	h=To:Subject:From:Message-Id:Date;
	bh=CX6BIi+AboIXbK/H7zDtZg54wyvsqsB59Ii79abg1mo=;
	b=EGluHCOl8/ypS1Na+lm9bS8iufFN/+MS2x5k/jfHdyuZdkoizyCJxAW7yTTG3FPg
	8vI4mSWRZAXuktuU0Dlr3mX1+sdkZo0x2nG3cjUZVvp0paS/CGVh6Oy2AAKI2tomHta
	u7G8TxSZzZ+yyDMa/l2DCaTjyuUrGe/HA3NV4YKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646970684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CX6BIi+AboIXbK/H7zDtZg54wyvsqsB59Ii79abg1mo=;
	b=J2+a/2xCDYsPGXA/LffnRrMJyXVphtnGJPp2b6HnbPUYHjFEiqhgUSxJaxjwNxGe
	DpwYVh1Bnb1AVQy6qUXSGpp9MmdodxvgmFY9sNGi8Esdoq7Kx56hDDYhM4+am2nRaZC
	vwF/5dgIeSCQ0Aj9zrAwzb5DCu6b2RXRT4y/F8N0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f771a454e-56027e0a-e7e2-4f00-b738-364d66ca8573-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4afb95470e002e1148a6361e45a0a43f5f687b1a5eeb45786b4057f361bd0388
Date: Fri, 11 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646970684
