Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0D12F2E
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657550812;
	h=To:Subject:From:Message-Id:Date;
	bh=TC6sls2axsDF7HfmO5IIYKZ856es2ebyXv5+hzRe2QU=;
	b=Bn5s9fWiuAuuCs/ERUzgosAPtjZF3jzkazSCAQIw4+YKsx8CwIyLygnREUd+gCy2
	PTk93OcBSU+3dq4TbdtVWV8IBURtHqhwTvjIPWlJUvF9foOqgZT24HkFQ4EqUB9R1x/
	3j8EyGKX9waPYNDiZ4SyCEkXs3TDYcoLwATyFjxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657550812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TC6sls2axsDF7HfmO5IIYKZ856es2ebyXv5+hzRe2QU=;
	b=CYw2LUuyqHUgdNCAE7EB64MSAwMFSajIY+TLpDH7zJuSZQPbjP4f3xu/F/G55Nwf
	g029bHbqGBhmm4/dOGiWQlCdMZIIMkacqWBzqifANERo2iMuAbl6YV+C2im7io74O2U
	OpuyMt0RW9OHYweGf/HZzBcy1OO7O9/vkVUxRC90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181edba34db-b9bbb4d2-27d8-4ee5-9ed5-f92fac013d3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bb6ddbfef6854dc7a5960593447306ed74ade072f95f91ee24603d770e3cb3b
Date: Mon, 11 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657550812
