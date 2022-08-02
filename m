Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863F27F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659422452;
	h=To:Subject:From:Message-Id:Date;
	bh=4HTATr1Addlv8HVHtE7T4ZL5L/a6OiefgQ78xK71A3k=;
	b=CSq6jRNjXPpjdcjmEb79snhQtD2lm+VXRkcDZiWW/cw9UCXJc/nTiPkYNU5awM/8
	Yzsl8EIsvJHwyvg6Y0wIcK5D6JWglm7/59vK9ed4tLe2R0k/jsk6eGRYbFGdtSxKqYP
	8WmWmy/IRGPjUAize6uPsb4kP1vA8dkdvR0azst0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659422452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4HTATr1Addlv8HVHtE7T4ZL5L/a6OiefgQ78xK71A3k=;
	b=P1JK+n3ZLFsOsnYKiqAEDDjDc3zF8MI8reQVZzcsMnAWvZbj0IfooHQVjFKYVSnr
	iE+w6WFl5fuhejFunHJNgNFy3CMU9YcrySqFkC1CCO92s0VuaoO4hMsvOdfCFC8l60b
	AKN77E8Ug2mGjW09a8KLqa+8JvdZuGKem+uvFEnU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d492b35-7643f2e9-745b-4c19-a648-6477fec71a41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec6721e44678f237217950453be6f4a3685bb41e45769e56a0af474576c254bf
Date: Tue, 2 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659422452
