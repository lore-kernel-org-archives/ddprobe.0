Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C907462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656619012;
	h=To:Subject:From:Message-Id:Date;
	bh=iOrUI3wSdzGv0EVA00zHaDSxQ/GWp7gqsaBWog+Wux0=;
	b=ZLJNGaFXGifXEeX/mDSocYxgM7+B0jMs+YqWR/9+tKrmTOf5yo/CHZ1TZ6ZVJWKF
	BHcvQUvR5uEBOAN1Rb53pA/a+LFr7S1ss+D3aWiKhc2/VoeOCLm7GcYaveZC96Uourg
	qh9xtVyI53aaIIvBRyhH/w9sIuLgMZm7RrynmEwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656619012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iOrUI3wSdzGv0EVA00zHaDSxQ/GWp7gqsaBWog+Wux0=;
	b=Qg1kYiB5pk4ssISzChBv1NddmPdcZiiu7lq1XZHLAhHJefPH7wVDrcrIYXfcWLF7
	OWwxlLmEMiWQD+rfCkrXx/6zEo6Exm1mtAKme5IKESN/80++9eGAjZxabv0ix1w0+Um
	9JJ5yzWxOBrgA4Evi17hGmkRUwZlL6d+kcUzsUTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b63010d3-8b49646d-8eca-48f0-b87b-715ebdfae16d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e4f46f05d643f0cf09be25033b918b0c5de64fae5b2a3edb3eafb121ec35e4c
Date: Thu, 30 Jun 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656619012
