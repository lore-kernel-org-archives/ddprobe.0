Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9F410EC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 02:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654308359;
	h=To:Subject:From:Message-Id:Date;
	bh=Fmf+dBkls7meWzOJ7jGuTEJLMrcIS0JqeKc4dKM2n5g=;
	b=Qb8zZRKsw7BYYZII1Fy8fLHPi9LebsGiY0bZH6ZyPX62UVJjuoLxnGSFrMbEBi4k
	Lzr/MgDA0cGPZ/YA6KA0nnHw0ORfkcbhmLdXQxmCmcV17hgjrBgd9yaDeNyqQ5acAip
	9AT6UYteKrlaT94bQ067EhWYL7XR6bhfA8sKqkG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654308359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fmf+dBkls7meWzOJ7jGuTEJLMrcIS0JqeKc4dKM2n5g=;
	b=EJDVpSmE4lgsO9KcFdlPfP7prZRKXjxLx0+DY8oCQ645uM7roqCfHWNQjY60JcUE
	ZIqetuqDDW+jPZEibzIPFke41/mSSv3DB3/vC6TqAySGtpFGxXyZ9KZultdMOI5UMWH
	3STwrow//Prdsd76JQIeOFDacWgM7SyLreL7oc1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c764c90-1e3b990b-790a-4442-982a-37c50787f23b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66bb42ba160182339638ba4f61f95526a5fc44e5a07059017a2dc75adfb25bed
Date: Sat, 4 Jun 2022 02:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654308359
