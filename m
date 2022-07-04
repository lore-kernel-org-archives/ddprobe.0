Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E37F7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656979012;
	h=To:Subject:From:Message-Id:Date;
	bh=fsHO5qCW+i29d4GN+Pke8aov6Ii9e0HEs8n8iiDj1rI=;
	b=floyC0NPNbAUNdPeS8A8KSBOuualxN2K23osPQwtJBb+YSgU4sfxrrLW0HbX1nbZ
	ickpe8LPxkaAZs2UquQ7GHtxZHwcjtGX7EOs7kifKGHH13muEONhMdTiqEDWAMCU6lt
	MQi0p2F9B4P8JDezJLgKCO7yOCyXP8ZwZq48bCs8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656979012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fsHO5qCW+i29d4GN+Pke8aov6Ii9e0HEs8n8iiDj1rI=;
	b=KgQpaON0P+U1229SmZAGB+APFq0lGd0CVm1l9gFToeCh018upW/HdsY8w8favXPG
	n6lBXWb454ZMfJWNjVvSVrlpyRBKjXY8hl/tVu571Srdvj3/Q+1+D0V3iT3I7sGvGEy
	djWvsbMsSgRA1A2Ft+4HYP7peS/ZkbYS044a8O74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cba53a98-16bc8b3b-d979-4cc8-bcf4-490a7ae1b7ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bb800497db05a0da36e1cc51df449d9eaffd92f8e7616da84f9b746495ff8f4
Date: Mon, 4 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656979012
