Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA8B7EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660438253;
	h=To:Subject:From:Message-Id:Date;
	bh=nvlyWMuZXlXI8h7Cjst1FfXJ0A2mXBV7tjKONZEefCQ=;
	b=OD+9kTONdpl3XylPpddIQoazoUSHDHV1+8L1/cGddNAKSN87BWRzArJRB6T7qHwd
	HsrUfpcaeZ815R6k3jPnaw6K2dkRm55u+hhYvfHomuLy7zbt4QbiyDpfvCZW6Uikxqr
	UCwRnusSHH7kLomx3V8bo1zH8VsOuNtTjtilHlLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660438253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nvlyWMuZXlXI8h7Cjst1FfXJ0A2mXBV7tjKONZEefCQ=;
	b=Aak/ghnI4qZa/Q/Tud4WzZjPPPVEP/g1tWLM/5F/zwMy4/sl8Kc+zg9fzubw2SEk
	xv5YqvdnlHavggo069LeTyKX7FRiwlRa9rM5WfdBoZ3yQB+iOsFyENIkLRTKSBMJE2G
	mqjsDhvo5mBgJT+oRPHxPXIJnesOLCQ7jQbO6IFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299d50bff-1e7141d8-b7fb-485f-93f8-2ceb743e5570-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06f426a99b1e19e46087af8d0906b00d4d5630d2fd24f7be8e80bc54b6b1411d
Date: Sun, 14 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660438252
