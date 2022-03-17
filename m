Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05C92F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647494784;
	h=To:Subject:From:Message-Id:Date;
	bh=6cdQrRGhMjyBSM508f2BqnkY86cQ0+SNT4TEc7aJ81U=;
	b=jrVsmDrzKgZJLO2aJQFISq4jyF1KRO6TTjV18rSgwJekv26mv4O4ZHQ1v+q80G9b
	9OjCD6QbFiQMPRsZ6WYrIjZI1YKtuC5R7KoDUUfdzFbIAl+ezMqSV1pzH55dBq5NvrU
	THHB6+X0yb3cg4spktMYndbQgucoGEXU/HHpGfVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647494784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6cdQrRGhMjyBSM508f2BqnkY86cQ0+SNT4TEc7aJ81U=;
	b=eds6TiLVk+++iXID3RFVL9yli3H3irWTW0LpdxRT4MxhQ8oPneCj8QIJisSAy4+i
	2HeqyKbsFWujyF/rhQPF6V8fV1f0s/R+MmltrQimS15jheAGeBhko8cQP90bO5Urbnj
	qtRl3PIjwhJtUVnq8BmOzj7nqG6aEJt/FdOZVurw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9657671d-00fdeafb-53c3-401d-9d4a-0c80f52cda69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13450b724143d4d64830a523115a7b988e3fb29b98d5bbb997db3a13a6532ada
Date: Thu, 17 Mar 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647494784
