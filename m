Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49E42F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657021612;
	h=To:Subject:From:Message-Id:Date;
	bh=W2EBrlTRh15qdeLp8cio6m/I+x1lZqZuaXh3imQ/ccs=;
	b=C3+YriPzETv2b+047WZo6WKwsZZKlUcuB5aAK3pZwAa5YWF6Vvb5u/u0wuY3zS/p
	Sf1hrAMaYKPfa5bXk93tnalDlqWI3vFPlQHZbH+OvNjHFU+0ZGSuInShNspmS7bfHnb
	Fwvz7pHZOi49A4C8OJTb7CnseVrDOL2Nt71KPPqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657021612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2EBrlTRh15qdeLp8cio6m/I+x1lZqZuaXh3imQ/ccs=;
	b=lC2Z2RLMFzD0QEW+6zifGX63npZD5ehi9W8g+aYHEJ00uIkQ0JpdBmJI8i34jeTg
	J7eOs1/0F4pFz6hwBIZN2jGW2XNR7XlCciz8HjGEdOSK0uzp8/rWxswe2SGoAD/jQnx
	uU+Z1p0ErpVFVTpg86vzzv1Ls4gu0kUfi2grhWAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce2f40e3-3c8a5d56-36c9-470b-bd89-06d315c1816e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0b0f832093a9103f6e1d8aa281d71ee407ca53e0f4b392b40c0592dc6f650ee
Date: Tue, 5 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657021612
