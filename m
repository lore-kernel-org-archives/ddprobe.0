Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA8B17FB
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 09:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649237398;
	h=To:Subject:From:Message-Id:Date;
	bh=Dqe45VBzFkENmQBbR/a/btYJDXkvbMTP/KV9p55VCFQ=;
	b=UfNFhe7BcIqbY58jfaMJ8SCKX0VAX3y/AXTWgzdQSBndMaRhszCrRxP+9lKfWQWF
	//B/IboSe7niVqQhGmLUMbsb9xBWNRUrXmNCZeDP9CGH/dvrGFUmXidMDHHwO5j4I7j
	1TAcpBWX2rA3YzeuU4atUj/ib7Oi1Ug1lwumykKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649237398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dqe45VBzFkENmQBbR/a/btYJDXkvbMTP/KV9p55VCFQ=;
	b=VLuIxLeBGeHLQSApIa8WWXksdrufksjz41V7ZinAiabGd6nC9XPgphSWJ0Z+ihTW
	t+lwmzJ5nv1AS3XOm/MFjJp4OSBROhz/Z83TA62BkRL37ftAQaHcd0w2+1IPiJC+svw
	dO6+uW4OHQ9iYlrwss9MTGdWiHRHpMZCIHnu9s4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffe3592e9-1974370f-91e3-42ac-9e53-ab278a450123-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08a7bddf271ce7eba388153a2a2d781496d49ed90be43af9eb94f22ee46c2ed6
Date: Wed, 6 Apr 2022 09:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649237398
