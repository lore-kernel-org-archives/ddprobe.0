Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1DC7C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 19:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648926478;
	h=To:Subject:From:Message-Id:Date;
	bh=Bl6FSvlsefo0vo7/eWCRsoETcInGyh5mnK+qVEaJpYg=;
	b=TbqqXK61pqzvHYbHRKK9Zeu0CeEr+XSq2p0pke1pgTqVVbNvHHO3YWmapSEls133
	Ya1ZQnwrje+rWwjiYb0TzFI22PTgcka37JGbAbi2AWUWhXiQKiFDZdcZAiir7k1gAyO
	ILo74ITp1duI3k9umzXuOrcvNM7wN+sBm6KWBXRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648926478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bl6FSvlsefo0vo7/eWCRsoETcInGyh5mnK+qVEaJpYg=;
	b=VoBFywwrJ+efkcCJAnvLU1dJbJxzsUKc7i5oIX0FydvwfHmgkwlPoKoYMn+hemee
	vtR4I0LLjiAyp/Xe5hHdIGXuADBl7rpYWVLIU/EYfqcSZbZzmTIzz8/GenPcBkYhlrl
	GHwtEcEjz2G0uvo0I1hF69f8oDxCgFsZOW/V5Sn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017febad4fbd-8c7ca840-3e4a-4d84-9d8e-d99616fd3db1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9ee211d4821e666b255587c483206b241a3a777387d829c2e42d73a12908158
Date: Sat, 2 Apr 2022 19:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648926478
