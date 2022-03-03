Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C4B7E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646266585;
	h=To:Subject:From:Message-Id:Date;
	bh=5jzEKqP3/TBzRP+uxfi4w+sG/3HY8KaTf2+idlLuF4o=;
	b=eGm/LMRIQDSaFiVDasUQtEunggO1tzfKEwp2q/j/HyCRa+vmgJpX1OIHo4/v0a9n
	VZkVJP9UM51O2zUDY3VTh1465TzjunxV6+g+nQEFSjbFENyeZmN6IKbQjQMnZ1EZuOX
	V/GCN8AkV0XEhTgWuSlvugzLDJJvHB9Q6FTyCCSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646266585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5jzEKqP3/TBzRP+uxfi4w+sG/3HY8KaTf2+idlLuF4o=;
	b=SnTo5f9rqkmawwxDfn2+4+002n41MWOOagMwTo16WCM6C9Q4yD9Qm7ZW7iaEQp09
	gmlIkoDbX64PBfObGJI63JgvRBBKqtYND7C0BfWBK7zxltPazBoB+xIRgJyV3L9gI+c
	X0YmdggWWM9WdCdlRNnIjnwiSscd5xD0FUOM8/q8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4d228e9b-47c9dbdc-24a9-4399-9320-4a8ecbc55151-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b087a8f8970ddc69b8937774e6ca6a81af40fe5c839189b694f4ab379f298788
Date: Thu, 3 Mar 2022 00:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646266584
