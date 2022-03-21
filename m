Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DC34289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647870984;
	h=To:Subject:From:Message-Id:Date;
	bh=DNZJ4H9bbxsaXBxKeP0QNnoBh7vcttZrix/XTWFslho=;
	b=F1TROc4yGpy95iCnl5M2mtmvrrwxTHKwlNOdmlm/1eecOwyBDBsDjGnFOEkI+8op
	lRm1WjqZ5z9RwC3MGSr+62S3c88MvGbtGG6DTDFMIb+UHraTlMDizhzzHG6DOmDDxbD
	xmetAF0c53YQP9ySLqnoDA07X0aGJRVVoGf3Iko0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647870984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DNZJ4H9bbxsaXBxKeP0QNnoBh7vcttZrix/XTWFslho=;
	b=IqIXLH4gYUy+LSRzUrVrxO76Im6pGWTBDgKzqpiDSa36egYXmdyhRMj3RiP43x/f
	X+8p0gq2PRwbK+urgxq0j0LLhIlAFUs8OrHXlGo91tGVEWqnaOhWOLY1+O1Xugp0aSX
	p/F+vsgoze5CQa0Uiy7r0c7naqpwnbDOMuVhTv1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facc3c241-086b891a-a096-4bd7-8343-dc31c253c3f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 564156b613949b92503a9d9ca69155826be3f38d82549f27d3f5dcc713946d28
Date: Mon, 21 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647870984
