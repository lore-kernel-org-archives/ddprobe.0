Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2CF23AC
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 05:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652939639;
	h=To:Subject:From:Message-Id:Date;
	bh=kGogEMeyyrqiFU2jj6o8ORmz9JrhaLytVJ+VlsmrvmQ=;
	b=ayse//FtbN8nbLrBnUkcq6cZl/cjQHb6eZ/3uSqJSXSPRE2AxMuELT5Hn72eI6pb
	09CtywuB6ffsT1dh/ncz5AcfM5tC2pr9O9093OaNJOObuML25bmhSkekggaaBf1MxiJ
	+iU0cza+v42s2VAznp6KFJdCieblPYQa64Vok6vA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652939639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kGogEMeyyrqiFU2jj6o8ORmz9JrhaLytVJ+VlsmrvmQ=;
	b=E7J1sg2iHkhY2UmwYz7HkbTuSL0jScYbmDNcrb7UIw4BMfpmsWh3BU7QM/tfjiht
	wAoIHFQkhnJLy7hfVvAwLjx0ysnrivObb0R4aUoqdL/T53SnXoEyWLYqf/MCKtbiUEW
	T6w50XZDT4DtOeaFS1OzetndzY4nSMRNUG/S8VkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dae149df-0295b2c2-9216-408a-b42b-60ef9dd0ad40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b83695ba4cb061ecff0935b784c4df10997b10f9d2672af3f9cbc42e110d199e
Date: Thu, 19 May 2022 05:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652939639
