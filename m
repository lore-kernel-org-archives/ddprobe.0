Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D081107
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659770452;
	h=To:Subject:From:Message-Id:Date;
	bh=2KstAIFZfB/jECOIbmd0/Skxd7xieZpP4ixK55/bGqQ=;
	b=P3yabkJcuokH+KiknnOkd3jZ4j1YFO5ZOvURQbuS1weEX7FlPRSoujkpvXlVahvY
	F/Y1BWjT1d8Mhq1KaOkl5WquY92TngPxe4Cg8wW6Ac5blJ9h2nHLy/4IjW9KVESZW/p
	Tebnw+rmr7gMVN3fLzuo2sqJpEfsGqQ0hcZYhlBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659770452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2KstAIFZfB/jECOIbmd0/Skxd7xieZpP4ixK55/bGqQ=;
	b=NrpTHsw5wgM70SjdYte4Stu0w/Im2eF0cDgcLVmTQaYuYAVwq2zWDhcX/ihtQHe5
	kHwq/+vqBI/J4iRvRzigzjQI5CPrMot05KwvFC7T+4o38dZ87rQW7ZGqEKqrkYP/zFK
	L6y/bNx6edFUQ6ZW1vaF/mLUc0nvWdj5eVgb2m1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272073a69-34878b52-d541-4567-8cf5-1dacddf42122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ec837d167792165e178134716b7d82463f2b28c754076a4e043de3c7edfb96a
Date: Sat, 6 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659770452
