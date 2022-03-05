Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA6A2F56
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646497284;
	h=To:Subject:From:Message-Id:Date;
	bh=V4EIIHE3o4181I9ieeAjayDInTIDpQprU8L/dsFlvSc=;
	b=BhljDmkymK2iQQg0+5/7DrGm85iS16nQneGqAWutCcY0U/zG5oSbHEby+CTmnh2D
	NT9Ag0pK2tYFVQYZux7+L64StRe1SIFdgcjwSDasaISYwuhtUb4AxFyUxUAUqMq09Kj
	1h/DesAcFUpBXbuqoWtD9MQJo0db63VylradXKGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646497284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V4EIIHE3o4181I9ieeAjayDInTIDpQprU8L/dsFlvSc=;
	b=QM4M638ZzbTy53kS0ekSaTJYoCUskjw0d5c+McrK0kXLforAaYM6SYaq/bWsg87c
	cpDoBH6xfouVPc+4/BxgmEMZX2ot+tnZ+4PUTq3am3fxzbkKmOIsS5M8/c9irfUALg/
	YXagX6DEbHScm7OEI08I09NOpq4H+KMtRva6dzcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ae2c29f-ea0b56f0-25a6-4471-9bc4-3ee8a892db08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f3a2122ba7ed0817181b8efb75dc2fe10e187d3750e458dc2047a265e58bde1
Date: Sat, 5 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646497284
