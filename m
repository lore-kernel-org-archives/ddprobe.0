Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D1B17EA
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 08:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653120539;
	h=To:Subject:From:Message-Id:Date;
	bh=9IcT0ZMOHt9fBroAPNYPL8GHR2Ex6SMqDt3JU4ybQ4c=;
	b=C55hnTi19E3XNp9a7nMuALrgqonElCI13LsqMwDxf2s5KYDqZY2uVnY0qCg1i8y5
	sytSru04JGYvPD3RQxBf/nJiFJiKhurI/FwkDcGBVaahbuWFiN4y/iJ16DXEstCD4PL
	9sM5/RTsqXF6S9xHEHOLArbNzByjku79437bRD64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653120539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9IcT0ZMOHt9fBroAPNYPL8GHR2Ex6SMqDt3JU4ybQ4c=;
	b=kmAABtdgWJjAb5PuOrFrs57rS+aS1YsMT54tenBfptqCF26/IxRAK08Sg1ajV6sO
	Nm5cr0VNpDC0Tt62wsLJRJV8FNDiSfDvthn9IX22uU3Ndenm83anMf2rkGlaP/2gYxr
	4FuEItbFPfEtI074aG0SQJ/Ux5/AsusY2OHne4wE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5a99a80-e261e0fe-b7c4-4178-a19e-65c1d22fbe4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a79dd9e87e2336c1f0a10ca89137f2bd74060b1cec82a5f4c6ed425f68a3631
Date: Sat, 21 May 2022 08:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653120539
