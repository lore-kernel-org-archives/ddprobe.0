Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3111102
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660624852;
	h=To:Subject:From:Message-Id:Date;
	bh=RkvycSkBoXIdQntoXC+tIaozcFMeGCut2PNc2VJ901s=;
	b=h+VS6hysNUFVWGwXHZQSfc4E3uAHv1O0Xwh2HOViMxM+Mvua8PMwt43tqeJDdst3
	xVD3+5OhA3wkBJseqMgZAmkk0m1wHDC1fQ4CHTwH6vTADYsDrMWpayNeGkjkp9lvn3O
	l3voGvygEfz0XXO7Q4LahBSG7slsLLuGC4eyk92U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660624852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkvycSkBoXIdQntoXC+tIaozcFMeGCut2PNc2VJ901s=;
	b=ezMidFyOAX9OOFB/5x9aJQhqlEbdapQ+CHiBLtM6TyP1NzdC5+LxXkkjWtsrnNiP
	qM3iVXcMCdORMXtkpoAM0VXSeu1nLN1+myHJ4r2+2evfltSgODXPyZpYRv2aHsLk0I2
	d8j3hqxzqGmzUTscOm2NZv+c8+5OY2UJaDLgWK00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4f45664-956b09a3-52cd-40ec-92a1-7decf39876e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26de6811aa565db368efd41bcb551bb2fd819109c155dbfd1e2dc692895f7032
Date: Tue, 16 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660624852
