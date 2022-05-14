Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5929C2577
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 17:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652550359;
	h=To:Subject:From:Message-Id:Date;
	bh=87Ekw1QvZK9mkNEW5H+7MKvgzsjDRNzSIUgO2ndo9Ow=;
	b=kBGDt+4pd03PS33OmzMloYgz9XZfqKeMkdCrpuZBfJyi1LTx1bJGk52ouapBmn1E
	8HGAgPduPh5SNh9G5SiIy8qjPxormSQmhR4bq4tZmP9Tin5Qt6Ftin0teu1SoeLVFal
	Lqk/uLwZxA3bN/66hnFU8dkZcEyRO7sdS+6aHSzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652550359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=87Ekw1QvZK9mkNEW5H+7MKvgzsjDRNzSIUgO2ndo9Ow=;
	b=fgUc1wh4Pveg40Gjzkw8lVAogztyn0Pvp9BfInnQlw/9ASyXXgOekAfkzXCsULHB
	O6zv9pdGIfvuqdsWwdTfqEYhzUr7fNwe4Ikrq65acRGh8+XlCAm7zHWim+7GyYyRaDy
	1tJgC2wnchzfdk+gCT4UyZC+GjDu/lysXN3RA9fM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3ad58ca-717c3cbd-d101-4ad1-b5f0-edd6a546e8a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e998800040839187c97f53edcf21f3bc649680f50d3ff7901e1f4e3c2159a00b
Date: Sat, 14 May 2022 17:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652550359
