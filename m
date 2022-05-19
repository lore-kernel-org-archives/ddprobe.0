Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129A5291A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 18:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652986079;
	h=To:Subject:From:Message-Id:Date;
	bh=2Jqo8/vqvsaUgh3iWefzY+hyIUrUJQZC/HMpAnY5AjA=;
	b=VYci0uie6Ys6IEvY2o3bUoruImoxRWeCXpUS6qJhO2WKf9kJGkhv/Y15S0+WQOhv
	j0/CZ5LNXS51FRwt5y1ZV4ILbcJItQKBeDzCyp61sU6BTmMuk+L7JnF5EgbfPZqd/WP
	WDoV7LU1OwTKH8dhv4E/evwaeLa4AtPweZ6prrqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652986079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Jqo8/vqvsaUgh3iWefzY+hyIUrUJQZC/HMpAnY5AjA=;
	b=cBL4XKrfqVAqKHLrq2mAnfJsOHBZU1WOYap1aHqX+wVlqpK0oMrbQ6QP9S0YPivV
	dtnUnd+jQatj2+1pkquqsXelSLovjtD1qGpgMHC3gmS5WhrN4BG9FSas59gOM38uPgw
	Z4ZJygNQOure+5m7rtqtRhYZwl8U9F6waBazYGew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dda5e80e-559c314c-cec5-4619-b9db-d623639a9fb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a803ee1e49c305a7a51a5995983a11137450e4e8ab0f5b2516b3ad800da7f9ce
Date: Thu, 19 May 2022 18:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652986079
