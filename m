Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44EE36A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647859284;
	h=To:Subject:From:Message-Id:Date;
	bh=kKldxkKS6E8LDS4tI6kqHvZrZ2/g5lRdTBJJCdYzOr4=;
	b=gJHI/Z7jFnmM7VXSSeSyCvywVdbZdPslnlrH+3sg59qL9mEAqmaNlZhKenjKX8pX
	1//OuRfwAe3KPoYuIjUYjAM00xd0X3IyXK/1n/bBkFXuwTLHovNX1JD95ZqdhY++v2U
	nCBcJqwbvMMT1MhdwswP0gQUBA+m8ViHV4eXIKDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647859284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kKldxkKS6E8LDS4tI6kqHvZrZ2/g5lRdTBJJCdYzOr4=;
	b=cCMjFtQH0KbVT/F0fG4MLEAB9fMjamrt0wpwJ5R2ZSaFYwI+gVztrQCm7d20FN3T
	/1fehrfcjhWXSXkhjSJ4YFwpRl7MxKJFGOwysZacCiwjBAFukXym6YymIQj+av6ehaF
	uawQd3YkwPda/8jUa++8D3L/ApGmgs0Z7TW6RUaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac113b25-d0a16895-4945-484e-8e0e-e4cc2cb3b6f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb8959e45304395fcfa942497b5fbde756122e91def76079b820ecdb1bc34bb6
Date: Mon, 21 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647859284
