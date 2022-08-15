Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40A29A9
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660579852;
	h=To:Subject:From:Message-Id:Date;
	bh=nyGxf3yVGiEObo6JY91UJwyzQY6BXfnAY8sJb3/QwnQ=;
	b=HdlGluQpt5xv3+q3DTv4PAhNZ0X83fPL/9aTfC6W8MMhyOdsBxuSZBG+SDg17pow
	r2qyAXriY6KMs2bzYZ37DWqMNlU3CGolweVH6GmNCxD+I2bnwJIyOuyCaazKVFN6sya
	RBwcsos1XzwcUKB7IdT92xYy/f7IcPXTQ+mHKhx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660579852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nyGxf3yVGiEObo6JY91UJwyzQY6BXfnAY8sJb3/QwnQ=;
	b=CGjtEMGaLBXC8uB41hgpGkyyvlhzoJEgz5IXzWIg/eLZwGZD/FuITpI+7YQEvmC3
	XTpWoLAnLypGtgdQ3nMDmyY43rm5KbG0AcNqV5CGDni4/z0HLwDJrQr+OXDkMIhnC6P
	CqCL5toE3xY4LBcYMlROfni1G71tOy4vMDV9P328=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a245b12a-cd4de6bd-b673-43ea-bfd4-e48fcb80c898-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba634d082ed8ddf16ca3792d865962458f00e4f2ba4fe6dad6d96ddfbc03ef1c
Date: Mon, 15 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660579852
