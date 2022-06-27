Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CA446A2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656353212;
	h=To:Subject:From:Message-Id:Date;
	bh=HiKyhQU+rSliTgovowFWMaKEHk/Fl3DBvsUaGtfQKOA=;
	b=HtJ37qIWtD8yXhh7FN4B23QCQpB2ru4HaXMFg4GGsRxmuUwum9tcvKxH2PKYZ1+F
	wSIqbJOhhNor6irOIN8zNpLzMQikh3mIyoUCLuTrY1I1ijXaYWMkA7WPNP6VbmfGBEw
	qOH6TQ5tZ6tkSQTLrm4jB8jmSeIDiAUPHOeVzZ3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656353212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HiKyhQU+rSliTgovowFWMaKEHk/Fl3DBvsUaGtfQKOA=;
	b=ZUcwa6JRcfGami7Uh23HOa0ZIolLDKElSUXQQta1ZE6t12uj5mfhnSRiUaFMztpi
	mY9LJf5KYywV+Py3RH9xkNclqXlz2v+s2JWOO+Bz0R1X4xnwbbK+WxAAjt69TEDLz6v
	Y/EQAPo8tNUTWx3UEj6E4KrEtdgEuZzX8AD2qFCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a658476f-c1c39192-d837-472d-84e6-f40a658d75bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fcfc2af7849a0a5f296d070a2d31c2898c068fa575555da40e125e2af347e7a
Date: Mon, 27 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656353212
