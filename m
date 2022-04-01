Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180347B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 22:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648852678;
	h=To:Subject:From:Message-Id:Date;
	bh=kJdRHMliPIT7ZuB4bJNr4CAVMBLUZRzZUwGw6zv5rT4=;
	b=iP/9Uz+yWHTRXxEF2D3tlrzn21y4bM5DAYcl5xVDk7w2ijqczbfdPmQEDkC91+MA
	TIx26NdlnCoR7zoCyVX4RT/emdOq9x58Ke0uqf69f6YxhTCoWXyMDhCp3jMQvhiPzVK
	0DHlvN5WgINS0iQaJo6BNFYjs5W5UIPNfA8Y6Tz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648852678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kJdRHMliPIT7ZuB4bJNr4CAVMBLUZRzZUwGw6zv5rT4=;
	b=ZfwrOKn4f5dE3XpjjylqOdXFLxLs4Bj7QtqwJiDPJmLZvNsk2oYsuNAul0rz7TCS
	CefbGAIO6lzHpEuE5Lks7URotyyexyuxvBRHNCMEJSNnhS/aYzeiYuByC22tbnmyMdb
	qNEdg+L3Ih5tT08Yz7HDgtKkcVR5DESaz9eYE1w8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe747368c-5a549c7d-48c7-42e0-8a4b-f5e96b201eeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ab444c1453c3fb24ba41e54fce563d5595eecf407c123fa056f6b23a03c47d5
Date: Fri, 1 Apr 2022 22:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648852678
