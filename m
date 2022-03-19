Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECE9160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647720984;
	h=To:Subject:From:Message-Id:Date;
	bh=ce0w3QssrpuAOc8IOmZQbmNtrb+3U+NCbLjsrZgk+JY=;
	b=CcxxmBbMhaCy38NfbgE3/VbzWzbUZuWndEA9bdj4QZWirrELrKcMBjaz9biV9fQy
	5uSGYIEwCBOGlZJSY5doyTi9qKPJ6DZF6XmRda19ByiOyskeW14v1/29+L9UIytx279
	bEwj8uFSX757lL1hbe9GORO4KRQKAUzHOfJXWN9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647720984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ce0w3QssrpuAOc8IOmZQbmNtrb+3U+NCbLjsrZgk+JY=;
	b=HzXgsPJuxkK3qdZp/YOti4hChMQuWc9BLhyJ/zWhvsxhoq89OEUl2HJqoPFMx93l
	2fNCF3x3I37u30dfcbH0iCV4GxFxdlQtqDDtfV0UdwO7IE0GSOt+F0rG5SWCzWKYBrA
	nmX4rD61GOrvX0S3HJyNi/AO4e3kDVjrMP64dtA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3d2f09e-0c731ff9-618c-4ff5-b609-dd8d22a8f934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2f1d9d1a4893dbc61969b967621a952a9d36b37ad561dccb66a8962c2cc70ea
Date: Sat, 19 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647720984
