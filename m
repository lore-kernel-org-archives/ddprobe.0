Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C8B7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657988212;
	h=To:Subject:From:Message-Id:Date;
	bh=+bjQJredMjF9bmcNwoCzNdpTktrMXOLT0ywaF220xwg=;
	b=kwrOcTvi6sNYyh8MD67X8b3l7xMu7GqUu9l5EAxopLzpqjVfxEu99t6P8Eunn9U/
	I/3Ugph6eAld9/wWLr6mTMtB+lFPFo4sZKwd68wVPBxuYSifJvO2z2Xszu4fQ0VrqMm
	SCvTebWP3Sz06yufpKB0zn6zeEd7qYZEuKMFlO7c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657988212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+bjQJredMjF9bmcNwoCzNdpTktrMXOLT0ywaF220xwg=;
	b=Td978YrKJHNj1GpEluHOt5nNCUxkh0ftmmVF3S+n7gZpjLz7XO1Ekc4lKqSe+Pr2
	DAX0sHiN3GCBvQ79THC2HaNAPMgFEDIB395jixPe9lA/s8dCPdEEwdPDVSog3/5BH9L
	OyFc7AOjOl/7KBmiNlMvCyXWN1XftoqKWO5TrerY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207cc6649-d53ed978-5fb7-41bd-8006-f4e2b4f34dd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e304b2102a1fd260cc6643fcf01f385071c8ce2bac864cc30b030fa42968d38
Date: Sat, 16 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657988212
