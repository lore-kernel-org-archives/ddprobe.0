Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1F15A7
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657709212;
	h=To:Subject:From:Message-Id:Date;
	bh=0ljQyazVWHkQu3nqtjPvNrl7of1kKg5N7NHiIo59xwc=;
	b=Sgxj/1iyRlvi9NxiLL3+b91OTyHD1BPfnOO4A+OuXyepoNn216cE/0bMnUsE73Ug
	++dk8O1GlhLwS84jXCCe78Xxsxl2HmRR6PGj/RnCG66Ct/vuc1ESEVhhvshEGk6EU52
	rv0p2t4vm43zPm5yhE1LgvkdPd2zpNwjGM95ac/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657709212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0ljQyazVWHkQu3nqtjPvNrl7of1kKg5N7NHiIo59xwc=;
	b=GB1uKc03Ti0xjCEVOF6VNyCmaUZI5OARsOpqLjoMlW/vGkiqkLL53Z+ShKdyKAPP
	52JrfMD5HdcTqdwvsPebH3vogxY8sDfpUC7nrhgh5M23Os+zeAjRtpyHtHJx0TwqwQe
	drvyLSuhLWK0vVjM3X6upGxKR0EQkPwc44BGM7k4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f72b32c6-e1cb1386-270f-449f-bc71-ae2dc1820e27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4183002ac42eebeb56952860c91697da51486a728a8b262162e30aface71d752
Date: Wed, 13 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657709212
