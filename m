Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C241FC5
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656774412;
	h=To:Subject:From:Message-Id:Date;
	bh=sl/9HAgxHBycecerTSxgOTkH4xp/0tBPMQBXwxwRSL8=;
	b=VaxLQWsiDJ9jZ7XyL8pkeO9r/iDxzRTlWe0lvwnL2yEQM0qCBeAr/5TF6z/EWXdA
	dcH8ZpTfpxOQS0iXv9VdRYoUT/t48rsvIO0F1+1JTuskMuzun2r+HJwnzf7dOxe3JdG
	R6XpXkQ9pWLlIXGU5/oR4FqmzouLg4xsHE1ngzIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656774412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sl/9HAgxHBycecerTSxgOTkH4xp/0tBPMQBXwxwRSL8=;
	b=aVzZo08US0mpdvnbLnWY/3we0d5w+knR88H3LrhW98wpEEZA+luRLDD0s7jdRnXq
	3b9bZ/Zw49dNEddgwhwBzG37k1HuALqdrFVqjTWjOfpXMu0mcJXIE0nzKjAI/ExOInc
	5sf9dVgR17xb9ayUqwOsrP1WZBBdw9Z4GezWC4Qs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf734821-5f5fed81-41ef-4ef8-a30e-2966be53c7cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5beb6b3220a36c9336765e563b967dfee61d16c57434e84ffd9aa540f90aa14c
Date: Sat, 2 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656774412
