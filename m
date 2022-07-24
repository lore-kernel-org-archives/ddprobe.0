Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA843207
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658671612;
	h=To:Subject:From:Message-Id:Date;
	bh=xmP9SZ3lbG9F5ulFtt37vILdgHItaskW0WcuZ8ILJoo=;
	b=V0o3ezFa+NJgPt1vARzhspvXtr602654mp1v/oqwT6CZOmyEAU2tcZJNK/v5gTJC
	jQV8f6he+3nbbzTOxBcMPkjHlOuoSSJRp9d28dJZQqR0/dx3nbvfm1O5aUr/V2yfAd2
	kJNdoM39tXl39bvkSpkDB4nLfBh2gFqrw/HwCWxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658671612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xmP9SZ3lbG9F5ulFtt37vILdgHItaskW0WcuZ8ILJoo=;
	b=gaJ6WOG+qEgBXtVcp12zzoWfGxpUpM7AiUomXjfZLyP9km3CysaRtr28SDXhiSHV
	VhrkopAXTYGyggJYO0BViOQSN7NIpwb03pNDUfAmkSE/uELDct9+N8kRi7k3gwY8JV4
	MBmf+PCm9yhfoCT3sPRUDFhM5SmxeW3UOXut/p/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230884165-5454f349-5b1f-4891-8282-2224b919cb56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00eeb99d9d042f392a1a3e115ca953179af8ac63adacc4f9cf4e8d6957315617
Date: Sun, 24 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658671612
