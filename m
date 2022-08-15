Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571F110F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660543252;
	h=To:Subject:From:Message-Id:Date;
	bh=XGO4L0sZnOyF8JMopGgZTVjpYPNjOjut+EzvajDcA3E=;
	b=VarPC/V/fo/IhdXv31HREPr80hHgsRIj9t0DEfwlCH9q1AfQN7AUejG2FReRHDef
	tmtwur7mcJqg/IJMoqMzvM6ga75pc8B5IdlQHsBc6o1+8/JQcgd7goR+hNu2G1KxGVD
	Dzd1Z0S+Ep7HvxE3AnOmRiTH6S09iYQd7lNZHN8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660543252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XGO4L0sZnOyF8JMopGgZTVjpYPNjOjut+EzvajDcA3E=;
	b=YkVttm0uss1JV/QP09QwUmbMMWu8cE/JxVWhmkOoWXuITC/x/yKhWThttuMMxGIp
	xsEPaXbHZkeWzXU9bHuvRLBa6eJ1yneQe4UdFF+y5Z/mOIHJs/fd8uy599RytBkW2tb
	d7DMomZXY0Ucy6Lnq4lUO4tfhPoz/F7h1kz1jyxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a017385c-ab05bc6b-0ebb-4e3f-866a-7b7e90e93c16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb0b377da0071730261cd301519ef7553732f2474b175071920093c64a77b6e6
Date: Mon, 15 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660543252
