Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7465B15A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647561685;
	h=To:Subject:From:Message-Id:Date;
	bh=myBXSNe0b1XSFFCkjiPEbTly9VFpVdV4tJoNmU56yKM=;
	b=jcQmj0OZLGtiFTgBPMJWQJ3z7gknIbt7BWMrnwWzXLihpOgH1iRQ/NTZ3y080PF7
	Iou1LRjeRd9IpK+CO1sNHGkd0rf2XHea/kpdB6MTKt5UJZPnW3rA+bYvcapzdqHzSSQ
	Jf+4+73PySDXTPt8bMnQzxShPXpzNwEAXs/QtsRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647561685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=myBXSNe0b1XSFFCkjiPEbTly9VFpVdV4tJoNmU56yKM=;
	b=CXbvLGrnmB4KfxBzeWj40pI8ruucbDTEQn8LIjEkn7X9F/OEAY0AjO4sbgNNsLgO
	rwOUhigvYGGwFtJAXH8ZUKY5askIeCT833OtAdae0s22exJP9xRsVSMRd0SapYta9W5
	0I7aXhkR/woocoW/B6Syc3pxuU77H+w1+GtkCZw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a543712-5602a7f6-d30c-4328-ad99-7cba824218d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77edcee1e8f50e5c2370d7942b4fd8b533cf7e659ce4293e001433d62d84d79d
Date: Fri, 18 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647561684
