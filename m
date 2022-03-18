Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A2A5137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647639084;
	h=To:Subject:From:Message-Id:Date;
	bh=xG/AlHfqWf2c8IUTnvpDDo9Vjh+kryzf2TKoND95dr4=;
	b=LqslgnirQ1bW2oREwvDnyMTlbZVOAAeVOEFUtxgzwJcAuv02nhY/9gXM8ZFcxf9l
	lWCYChAhNIeWHXxCwYHNA13wzBHAMHw66DcDDyn9JRcaVmZqmBTXa2C9Ep7LUfRWI3L
	mNdqovsrvl1dZgka7lm97VtmfnF0WvhC71jdzytI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647639084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xG/AlHfqWf2c8IUTnvpDDo9Vjh+kryzf2TKoND95dr4=;
	b=XU5rrsKdJrAk1FOdEV17XjWLIx21BL0nMj9T4zmMooTXHkdUnRGMRh0oDnUbgG4d
	2GNDDQ2iq1i/2EwgvHjfWjctdwFZom26mwRPcI2KAA+f3WCe/Dq77VZ7LxWg7mjTTkU
	3AziWNbbowKOsJdGRup0+fyKzsm0gZdz042DQYS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ef13eea-5c1094d9-7dbc-47a6-949e-ae5b4fbe0395-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f07fd4ccbffc47353274f128c3b5502d78330bb785025297d0e7c30b977836e
Date: Fri, 18 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647639084
