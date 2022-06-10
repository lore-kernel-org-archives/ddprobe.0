Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08CD7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654844279;
	h=To:Subject:From:Message-Id:Date;
	bh=oLe9luQNPGb7+GrCnb5UaZZUNwSpoxnWbsaKKQmJiXQ=;
	b=RS/1Ecz/UHRFYMeJ6snxqtc7BKuuUArNtaqcdYsq7vXK5/utbV317/HLFTfpOUaG
	Yuth0KvCxmC1kMjNJT9/+EA6W9Xyy9hXycCahYQnxQ2jmrMULP1njtfWq26oCG7S7+9
	OEpDZHw2rcbJeN7UaadBjRmf6KWTVocbHWxSB2pM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654844279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oLe9luQNPGb7+GrCnb5UaZZUNwSpoxnWbsaKKQmJiXQ=;
	b=DwE3mHO9jnRt3eDgoF3SJkXKPSq8SKj0HQXwF0U6mZOBzVarHyH8fzdI0v+reNhZ
	d5AB4L+IMOwtX6YKI9c0gek/Ed/UyDbY2/mkT2ol7B8PiawxJok7MF/2bwEHnOgaKcB
	RVazvUDPbfZU4gm2KB3jsSWTEaZEAv8U0TByfVvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c67ca01-057cf8fd-54af-42f3-b5b4-84c310d60c58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00052c4f3e36931c3983d769dfa4deef0ddc1749bb3b7eca07a330654d05b634
Date: Fri, 10 Jun 2022 06:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654844279
