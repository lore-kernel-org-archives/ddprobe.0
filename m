Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BC520EA
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 02:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652410619;
	h=To:Subject:From:Message-Id:Date;
	bh=a7sz9rM5H85hYIyN5Le8mxrtr5IdigAqoC/OiW+fqqQ=;
	b=eaYd+VrdoV3dVgMrNeocIM9Zzhpj7a1KzKPDhqupz7pqrPprLyY64BWuJMa1lDUY
	JEag/TdIwdW92TrAIxXqaBb6lFJwAWLjZPr5eSJ67UpRX7QnrGxcIckiI9mXrfk084l
	fKC+7WqQa8PoofzJ+JBolD42XsnMtPnv9+F9NY0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652410619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a7sz9rM5H85hYIyN5Le8mxrtr5IdigAqoC/OiW+fqqQ=;
	b=KyWm4GVa8oFKa1n14ZeiKqK1dbxCRdGZ49M01/XKRVWjqXaQy/L2mHgx+dqLNihF
	YoM3LyeW5YIAMDz6Z8LQWn/X4lm9CZ9mtmiHhCAH1E5Z9cikOxpj2qA6ktcRgIcdE2F
	oKYS3k6DWu2SV3kt/O3G6tUkc57e+TwL64oEEvbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb59156f-dbd3c0ea-49fe-45f2-908f-aaf1a2e5c2da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58627fccff7d95dd75d4d3b8f24af922c6d78597c114f515c6a66d7245b3f845
Date: Fri, 13 May 2022 02:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652410619
