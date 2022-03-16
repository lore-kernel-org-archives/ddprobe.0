Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594553D6B
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647472284;
	h=To:Subject:From:Message-Id:Date;
	bh=hsbC3vloVGVfS3ZQCRzm7Ew0WXx9lDcRPG7TNmbr1jw=;
	b=G0DEF48b2wsQKkR+uV3/HXZwpjRQGSmvkJ6kqlGw+Ackt3kJi/s5ESdkkM0KSyfS
	5dIxUr04hgFiIPsJEUaS/FOO/fkmOYN9IlH/VHUm5LbPxzPRmvJggVJ/B6ZtCnT5DaZ
	XhwP/dbQ7Wpvk02IpxE6975OjDa7VyfoPMwEOi7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647472284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hsbC3vloVGVfS3ZQCRzm7Ew0WXx9lDcRPG7TNmbr1jw=;
	b=S4nDPLoKYhnHwV3mG+Y6bU6R4gOeI8tWODeP/Uz/ccjNZU2grTqQyHLSngXWtGvk
	oHTxVxOT/wKhgC54n8Xbhc3gEWMwRphUyo8iwgeNq7ZPdrAE9BaDjn78oFpmaiRvQyn
	EoR3Fm5IlhqhV7opNPwY7oUu1MiUM2R5mXXgHNAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95001463-b1dbedfd-6528-49db-9629-dcfe790ad3e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c05977e63956cf2f93cbe812d397c90821e7af5a1bce534f8591741c3e250129
Date: Wed, 16 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647472284
