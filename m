Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBC27A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659922852;
	h=To:Subject:From:Message-Id:Date;
	bh=NuL9uG4/6/XPDNTZPTJSu3nyhpEhdTBAbfYNeY91ZDw=;
	b=LarP5Fya5JyKSbFPsaKOFOAA0gOJ1tehO1zEA+Dge2aR87S3b/rDa+4riuURHXeL
	645pViFqY+Ua1PllUXxkHsINpiD3yA7AAv+DVgBDRSn5M35P5y5cGTIH4udHBBdsAbh
	q/xLGqkf1/2CLqVj5zGEs9GoJ9SG8x8eIEe2eq4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659922852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NuL9uG4/6/XPDNTZPTJSu3nyhpEhdTBAbfYNeY91ZDw=;
	b=LaLTqmscr8SUZmShb+QXx7MltIOQuBB55JhbqEsuN925rdmyRdU62tWdD6FBm7TF
	ehQP7bJQ6PHHhCmzfSkmz6W31YndJQkT08crIMUmzOsJjH+qPn1zt8ctlsWn0n607iV
	fZINUJPzmukZEH2SuYjNzZ63qWnIkZsS8ugtAn/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b1caae2-21fdb504-c3af-482a-8051-00de0659a624-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 687ce87ab6428059567acf096c41b1b8ad1f5b948fefc32c21a3a947df739dd6
Date: Mon, 8 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659922852
