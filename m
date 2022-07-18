Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F60A46
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658125012;
	h=To:Subject:From:Message-Id:Date;
	bh=BRx12OkgjDlRBU3OAuCvDxvkXckWwhUNmsBm3Vu2C2g=;
	b=DTWo1fw3Ii7EzHB/8hIaCPYxDS+t3Yob5knKkNXRwTkd722MTnWHgDNkQUBicQwq
	qDYtUrPOAA4d/AjkocFT0Li6F0lBAnqFO/V2JC4cNlL17f+pffwAz7/fe8L6iHr9zjk
	24rNwQKrx9Uek/tLeOwhTERitgWlv9tYDPxzUh4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658125012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BRx12OkgjDlRBU3OAuCvDxvkXckWwhUNmsBm3Vu2C2g=;
	b=kdcmJNpPYR8OnowPlG/2JMNy8+eO9msogLDlyCeZe77mhSejajuWkrR/Uv9pFdr0
	f+sazBG7sUkkkUGQTcfJ+ntOnb0DtFf157yXv9O6i8pfs2yFV6u8QkFjcNBk8U/Ga/F
	Q27HEZducDX1vMt/8/CKKEEYFB4j+KgtPJsLOZFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ff3cd44-8c58300e-025c-4204-9bf1-aad0c0301fe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60a334d2a4660fa213ff18916218c287e03360cf08ce7bdc013d04f3cc6e9574
Date: Mon, 18 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658125012
