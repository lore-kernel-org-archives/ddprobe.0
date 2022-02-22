Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86AF16371
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645528585;
	h=To:Subject:From:Message-Id:Date;
	bh=zmim99mrk9pJQ/JMuChbPxmwF5cM639jkXKX7EmfEI4=;
	b=intYPJpq6EVP0k8Ro/7yTOhI7JA3NIFFnpAHIarZ7qPXiDDVSzhRvrVkaD3Ptm2t
	zl8mKBF0IXA2bzhataJ3XjC0xK44x4O07Y3fzvMX+ZiDxg3Gxh7W6q05khP2SYHXmIx
	n6iDSnATtZfxwyY3v8ZGMSonXWuVDN0RWIyJh3Ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645528585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zmim99mrk9pJQ/JMuChbPxmwF5cM639jkXKX7EmfEI4=;
	b=hSp6fisqDD9ACNdV78XVEJ7qm1jUcEmybRqiAILDRA8kRpMScter6AUG5sR/seuc
	YzG8lzIWd28+Ozr4ybQECTv9dDjSn7564H5QR0u+eBhdixYHYz0Fv4lvKSGUjVEshKF
	ZnX1hfNfzFCjauKRnIaboobCqojRNojYc3Vc7Yz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21259256-a3dab3c8-ff01-4c01-b51a-c4e1d2ad1f59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bbfe39446ffdbd24a5c17fce8963a778936e21400d802f6fbe3f92525b58e52
Date: Tue, 22 Feb 2022 11:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645528584
