Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8AF81E
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 22:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650321718;
	h=To:Subject:From:Message-Id:Date;
	bh=S4VANJxNEJdLDIBMYEpTPDemxg0EGeVcadklWkvKsSQ=;
	b=FDQARw5YHh+bA4D54oLDhKj+VR05cEVB+ykFKjmrbY0aomzUPXzWOZSKMbnaZk/W
	HVXQE9B1yi8HE/UqEWlh7v4QZ/S/3Sjz0JC0O2y6H9QpqG6EZJPFALfY7J3eOqXwhAJ
	Bkg6v77aoWtODH/wylmQ8gkHSjhlxIRR/Kn6xqok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650321718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S4VANJxNEJdLDIBMYEpTPDemxg0EGeVcadklWkvKsSQ=;
	b=Qw4d+YwOKlCt/gN+ZP9BIqpRwQw8mkn0oGqtCX3QXcKa0aPVVTRw8y8sdkDSpEoL
	sf3FJSdFTYcArLTIb5ufZRF1eV/aLGZeitfCknMiJV4RvbvdDOP2NOFbsrn26b4fjII
	nW+84MVjAxGsLZreH5GDWqEOr0qbbkJHuAJegi10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ed6fc28-5a847e2f-7b94-4ecc-a0dc-9339244f4112-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f682d2a7f4632f0965995525480ccec7b492178f7e707e74fa755cf2b4096bd
Date: Mon, 18 Apr 2022 22:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650321718
