Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459556AB9
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 23:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648078018;
	h=To:Subject:From:Message-Id:Date;
	bh=tAxj/vwZEIKLMKQOS9DZtQ3T3w0YaZEGZpSPMeKs4Cc=;
	b=Le9HV1YgBvbWIDdK7DkarGZW4StiP/AyJsglDQiUcrnaFgU7sG5VzPZKv3tbRrlo
	wl0lnIFDsdINQfDoLoyA2Z0AmjvVQ0lyn0OuGzYF5uwuoPP7RlYzX6Jt4Ft2Q8TJXlr
	D4B64XpqwJAKwN/Qill0PkQ0z0dOTONDY0pU5jzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648078018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tAxj/vwZEIKLMKQOS9DZtQ3T3w0YaZEGZpSPMeKs4Cc=;
	b=ZqIM6WvN+4oywTczgupQho1yxCiuGH6aNtUIEKROEOOt/7wj60NPbIC5coQjFGUq
	5fbr5R5eE7nJObFCCN2WCOOB7TKaSAydh9BGHFEOwGtOkI7iupweWNf64Qd7IWD+zCJ
	CHw8ftb+Nk1RsPbSrKlY546iqwBFh/vfHRsg06/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb91ad714-e7d4575a-78c8-4858-8023-aad1477633ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 370a1749d4286a95527c961115d5c2bdafd1b708c56d8a7cb00f7f58339a96d3
Date: Wed, 23 Mar 2022 23:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648078018
