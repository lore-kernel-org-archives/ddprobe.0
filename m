Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AAF17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647696684;
	h=To:Subject:From:Message-Id:Date;
	bh=GnbHbTXNQuIzrh0l2QVF40YLEHuUqnKdXtSjD7+ml50=;
	b=MzoJls6cM4PmgnYXD1ORt9kgXWhti6qqe4uoczRANP81jhXXgiiuI6A62yH+OSto
	3X8AUVGz/Zo3orzd0lN8H+NXO5ntu4ru9Q/gKqyywb40Nv1TOx+6zt5GL/YMnhoGJc1
	uP1KVou4ppUpEmDuIK/Q8ysCsv1Z06dHa1w4HPV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647696684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GnbHbTXNQuIzrh0l2QVF40YLEHuUqnKdXtSjD7+ml50=;
	b=fsShxfZ2Xq3Ihy/JbKhlGbPvMMXjD1nYP4Il/wTjiwWLQtQs6+lPurGsSC3Q8KK7
	PcbXfL3r6p8a0uR2Ej08Gdn05H4dAJujkgSw+Ulejud163QuoITX9C8pMpnat2PWiDh
	VKrdYqLRFn/PuhqlvcMQtwrhw7YMmzTpAdN9Sb00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2602694-3dc93e13-e5a5-43f7-b1a8-f47fb924a79f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af2480db205da430b43eea7ddec8349983d661cb0daf0b6a15e7b33c7fa155cc
Date: Sat, 19 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647696684
