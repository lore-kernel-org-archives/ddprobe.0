Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E99812
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 13:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644844216;
	h=To:Subject:From:Message-Id:Date;
	bh=CX0bWCCaKmqL2FPqhkIVUMTLq8Bi9ySTwSAmn3Wl2Rc=;
	b=Ys+O4tVktsARlfMKJOVEEQFku31xL1Ao0rgJQ/ZhkFViJtN6zIOnMWq1mss5wPYe
	1JHck0IFcMA4QOG3JVAlhiCEM4SXd8rdqD29bgA8AH0Js89E0ohOqPmuOqAnMn4BTGL
	1Z/5Xyfjnb/wPaopQ/Cpuipm4T01FNBbEJHqdpmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644844216;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CX0bWCCaKmqL2FPqhkIVUMTLq8Bi9ySTwSAmn3Wl2Rc=;
	b=kTY8qpYiTP6dwQwzo8WNje5Sny4TVCxxuQDfgNZiaJ9HiiQtcivzWKcyQoK53a+W
	CxkAsfL3lSEKxhLG3M6+sE8koFX7Ym2i6WUvCjdv9An/pPiM/Voj88Uty59lyBhB94d
	c1pKpdRq6C6CAcm84HkmOAgZ+UpvKTetY768o6pA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef85af003-d8964d32-e784-4186-9cb4-0499c99a569f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30bd1be2c57d3075a784041ed8b663f4c22b708c67c3e90cdc8d46c519a1452b
Date: Mon, 14 Feb 2022 13:10:16 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644844216
