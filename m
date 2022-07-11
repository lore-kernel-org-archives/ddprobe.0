Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167AE7A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657544212;
	h=To:Subject:From:Message-Id:Date;
	bh=U6SICAPneUAb3fCU/WeUjk6I1ahyTcCsT5+XFAm11+M=;
	b=XLnxT7GTP2rlJMmnKEcX3KvPTjqeg0dA8WQ3RRM2CqrXnDodk+vXEgvnxnUKedsZ
	H6r1D2zZmaCvUZGsIqJxWqXvXHIA6tmo3WkH2Los9HtNLAqiytQOYeL/26wKeBX393H
	YrU3HVkzLnWxnc71C6xR6clPhOWnmENQKPhunCWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657544212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U6SICAPneUAb3fCU/WeUjk6I1ahyTcCsT5+XFAm11+M=;
	b=BEtNyi2ZHSpa82BP5mpVqdHoFSvfO1siJLnp77zYj7rk51hGTng+GvtcNWrVqqtN
	eoS35sQZx8R2uuxWm1GLSztLj2PvDPzA24kThG1fhq0rPhWONTIbk1UpQfliIIB+d8R
	mz/AJ0e8xE942/ZHnMFC58GuGl3xslpiY7Sd4SVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed557f27-d489d72f-98be-46d4-8f64-ac6f67f4e7aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b1b87020ca307ebad7ee1189ec140c19da2e6223ef2c6528eb9892d52dfd35a
Date: Mon, 11 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657544212
