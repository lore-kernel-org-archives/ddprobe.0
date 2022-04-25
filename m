Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5659133D6
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 21:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650921418;
	h=To:Subject:From:Message-Id:Date;
	bh=+U4koflgGXoc44hMiRgX8TBWJyg93t1PUEFW1psjMuI=;
	b=dBKp75IyjSk2uPct19yBLPHxuYxHWvJrhmy6lH6B5miwURhxKrUV7LZ3fuqREkB+
	y0o4HWoNkbavi7GkAIvg49qi2LcEk9RqIWaagz0hAtMTk2BQSjn2u4osI3y0acIRkWk
	fPib/XI+FeMEegJ7xqR1HmqyH/XMaRv2WIubc0JM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650921418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+U4koflgGXoc44hMiRgX8TBWJyg93t1PUEFW1psjMuI=;
	b=EgNAwstoq4IP9VhnKsbzv4DZu6G2HXeQCUW3+TkSkY+n2SrjwNqVgMEpVEGHm9C1
	xElCPSL4tpVky/6sjh0GGjzkGbY+U3Vv56DdTJTpjXHs1RLTiUdliAMsrcE/G5x1dwb
	6OmP6q+osujFDShOcwrEzJ8a585kljUMe347OOfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806295ae29-9237ffb4-4e8a-43c8-9571-f04a8ecc6d8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ed3e027aa4d554d8317303b84a011ce00336b50a6eb5c1c2d267eb444f1d046
Date: Mon, 25 Apr 2022 21:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650921418
