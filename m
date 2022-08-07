Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0023D60
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659903652;
	h=To:Subject:From:Message-Id:Date;
	bh=0SudYLVwNkgBhIDjdDjQMX6ENLb0OCPzFc4MYNec6KU=;
	b=YfCTwNqav36OgKUK/pJ38aVZqK5pg+r+sp7Iaoiz/F4aB1cLctSTN3AphXjn/VRc
	Vf4ENuH0HRLJez2uw4Ri9ebW5cSGOOKpD9e/uLV6XpE1lL/Yi1uWsrw4G9K2ieMv2yU
	ga6FOaPWxn3o4j2J/9EYfz4mmfMS5OCqyB0NW/Jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659903652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0SudYLVwNkgBhIDjdDjQMX6ENLb0OCPzFc4MYNec6KU=;
	b=Btiha7LNS6qSxdjGpYDtCgL8MAa2nd0FOsBwC/P+8UyIizeEiv9FiILINM3IZM1u
	zeOgt0nW4dqiJ0Mp6TxH17XXJu+oO7d4A/okGJ5ARdT3NmyB8Sa+bR01RZl1bAlhuVr
	25MNNP+kR+AaHicWIv7gfJIepQe83PXP7DPEQ59M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279f7b2d8-20068c72-d6d6-4dba-8416-a88d1c814aac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd95c70d0c5e4c8299c8ff1e6ed759b3f38ae07af70238849cd0409adee7ad05
Date: Sun, 7 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659903652
