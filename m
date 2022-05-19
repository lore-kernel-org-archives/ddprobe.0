Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F09D2F42
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 19:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652990279;
	h=To:Subject:From:Message-Id:Date;
	bh=oeXIcoIN1aKWo1nPpUfIA1FE4MHt2zuU3HhCGwt8Do4=;
	b=aUBXBm1cohoCwh0qwqX26FNvsT3yt7xfJbn18UJqf0w5yR4tOBZtd0YRnXpz/wrC
	pOYyezP2Imri01jlbSZvsxW1OgR40puRLF0C71VcuLkvMxGhASABG8ZC7c8BYXE7aaU
	BzR+eJlQphsguGanjB5OWV5Phtq1mHdyCE8SR6/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652990279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oeXIcoIN1aKWo1nPpUfIA1FE4MHt2zuU3HhCGwt8Do4=;
	b=g+36IG+j3e/t3zCIys81455XLgGLaZsRaYn9U1ghCiqBroGWr7/fkUYdnj76HUuv
	qNOOWV8S1DXFUWqm9tT3WCMmhr1rffT9l7Ub7FY+5qVWCJh5V6r/RgB5Y7W5SZrlVKs
	SfI/WU7MUMXBQ0b34IeTKAWJLKP4w/wxH82GGETU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dde5fef1-739ecda1-81b1-4d72-83bd-b3beeccd8c86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b70f603914c694e907e6745820f9e7ee72ff915b9889ceed9d64d17079ba1fd
Date: Thu, 19 May 2022 19:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652990279
