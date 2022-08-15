Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCD410F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660538452;
	h=To:Subject:From:Message-Id:Date;
	bh=+lUUx1F5QvR3WZgfa7t6gZiOo5psGD3vDMz6boFFgHY=;
	b=AdJW1RE4vpM1XNyj9Gf7En6Jk7Rn+5QXUdDUMBiR6n3ZrZL4XQr2MUy0yuJ9BfIW
	mr2JOOa9Dkx7DvrbR1kaKNjmTe4tId2AzKNqUHztzIicw8S7LRZ145anu0zYggAiLcn
	2sxITp5JmB/Dftrdmoel9K63B00wkG8u769AnFMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660538452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+lUUx1F5QvR3WZgfa7t6gZiOo5psGD3vDMz6boFFgHY=;
	b=FrKQiWb9cgEwTeRMYnGc+anZ1I9cHiGlvC4AFCrkTEmtq7hJ9q3qzB1DOhiyPAKD
	sNHKrR1fLiPRA9eMpx3pQ4m5TY1vAkYtMGmf+zdnYvwPJVIenKsu8G5X7VC++zYyGhm
	McJJOQtOlRknB/fhRAgqJe7NB0FQE3Qce+P96/NY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829fcdfa69-6e2091d8-77a0-4913-b694-88f94e6beae1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e20503d1f92dbfd6f3c226bfba097723e58139f6ca89acc2133967b583f1aee4
Date: Mon, 15 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660538452
