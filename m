Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EF033D6
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656712012;
	h=To:Subject:From:Message-Id:Date;
	bh=offA9y9JNz84mndx1vluKHJn0JijdCbxo0x9D8LJUx0=;
	b=gjsLNx6kcQWd7MZ5lR2A1n3kznZIT5pi1YyuQFzA5nfTOd/uNINwrs6OS3z3cLkb
	t8uzz6Src1xVGw/fA4AGvm2H+R8Oc2FIRXZuMhNUjw2oOcd4yFBONIGu2nWy0Lh87K7
	RtmVRTfNx/gXqftGBkRfCSxdw0ke+3WxVQrej95k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656712012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=offA9y9JNz84mndx1vluKHJn0JijdCbxo0x9D8LJUx0=;
	b=FR6rVklA6ARXCcobMpBwMl1IEiPMPTIGoDtbhpjk3z/Oe11jhsJphs/2Go9bQw1y
	dBA0lBMWyZ33nxvN77bUN6GDoIaGk4HPRbVYImEcD+scV3+/CsniDD0rlJBOgOmbmsz
	tdgR45z2a+glehicxJWGmcl/ShesExHF+6XSWSD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbbb2235-22d0dd59-861d-4f6d-ae24-44b0c51dbe13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7676e7577141fcdf7eeef3ab61c818a1bb7c68ee80e657fa8fd210f5fb24a6f0
Date: Fri, 1 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656712012
