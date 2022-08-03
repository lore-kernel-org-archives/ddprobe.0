Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA637F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659493252;
	h=To:Subject:From:Message-Id:Date;
	bh=SA6RbpiVTD3cnA52N6q7toFDaz2KI9eKRr80271TenM=;
	b=k3KP0Th9l5Lay65SB40VqVdXQZZYAa6IM1UGhcAGo0EeCF9xnWJwaMTntO4QMoy8
	mXPvpo6hI7Dn4V5QZRZgve+Q7QtNhSVUrjALVHLsa/G5gw5pjlJwJXmmZ+HTemNvdQ+
	jUXdA7v7CiaDRwNMn425Ge/vgu3Y86QM/CcTmrns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659493252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SA6RbpiVTD3cnA52N6q7toFDaz2KI9eKRr80271TenM=;
	b=S3cUxH0lmM+kS4x8c6pmrY+xdN3dhp79hY7hCyD3M7w3cyrmHpDsr3uIaKB9Refr
	r0dNkdaxvau2epklUMSJAFWM8VSE3zQMVND/fDbp8pscpJFB4yOll7ZG78wzHGaSMnm
	um+rgqH71aH3leFm47MixEKoriqtsCJBD8PLjRDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261817de3-84f7cddd-ae60-4031-b1bc-1d5d95c05bc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1a32334268ea2f6f4e10525da971bade592916a7efe06aa2809c16640516d92
Date: Wed, 3 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659493252
