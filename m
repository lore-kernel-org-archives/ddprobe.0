Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2392A7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656911212;
	h=To:Subject:From:Message-Id:Date;
	bh=wJisVo9usxB5EF0E9o5DFqiYEAQBKrlRP5XVxl/WCNw=;
	b=L6B/I+nlyPu8ore1g1OIwFfqKSxW9AnPCvFxgDWqLFlq72nnGsVvScwmj9f0413Z
	z+y+AsXRfMa0RJjj9QQSnA1g+RI05LFCu7UoNGX2NtMaY3KRuVIZQA29u19tiV0sWRB
	B2s2DuauE5sgm4jnC+5v7wANQ7xIjqUQGJieDYcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656911212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wJisVo9usxB5EF0E9o5DFqiYEAQBKrlRP5XVxl/WCNw=;
	b=Nid0vL2ai4IEuBk+2HQQ9bX34osTJW5yZkHxjruyALRqQhWA5kdTSN3OaF/WyLXa
	C8wrSqXFd85Ac1V7xDpaR1W5gfpGmOM6aCLKhIcQTNWIIaMDXWPJ2sn5iKro3jlx6t+
	3LbsEpgdlrzVnVb0I+swHCUS3YRyUPhw7RZ9J/4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c79aaf43-f9a3f40e-f2fd-49a0-9526-db7b610e11e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffdab5df991dd42af1d6861dc31cfc99811932b0cdc428e7be6e9d127b117e7f
Date: Mon, 4 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656911212
