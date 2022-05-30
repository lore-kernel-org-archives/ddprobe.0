Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD08195
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 08:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653899879;
	h=To:Subject:From:Message-Id:Date;
	bh=6zYHo/Mz7ZLTJvNsPycBLDNKWq3QRJFO0fAJKlad1KM=;
	b=W72QqZBo0Zl+DUFa5UiTD9sOJwho0NGeX0d00WGutBJRJRg2+SXb9WtW95974UrT
	hQ9gqZGxoqupmEBK92QT7SMNm+9Pw9SUfik1zD083JWnFg381vL4MRgT/aAjbfyisNl
	HUfPLWZhYBLk75na0xaIcY1KOPqvzxSa5PCi+gYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653899879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6zYHo/Mz7ZLTJvNsPycBLDNKWq3QRJFO0fAJKlad1KM=;
	b=g+viMt6Fwy/gxLRcW7Y8JlOKX3gmQw9QeeFJHj/kWNQKp/lHnzWDdXK18GgRYGpj
	UBpdTi3dfN3LNtSSM5XwxkRL+FL+X+9s1ACQFH0JJxfbzIw+UsJzdO2apWrjVWN/T7j
	L4B1cdWZ8Kqjx2naCwcNm+tuK2yp4XQYeTjVXqqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181141d6343-d140289f-ad14-441e-a07e-fc391b2b7f5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b9cc84486567bcc4d6bfca1c72b4662787921de6c03caf0a338d431e70b492d
Date: Mon, 30 May 2022 08:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653899879
