Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055311FBA
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 13:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649769358;
	h=To:Subject:From:Message-Id:Date;
	bh=5HN4RRhElPUMriOXjBINVM5/0ZsnAPDWmPCo3Ukvt5c=;
	b=iaEYUgYWv08sc6iKNxl0cIU0isld0iJGOR1IM+LG+8Jm4qKY+XG8GqYChL1jj4RD
	unYWlqYwyut5h0CVc1C6QZMczUzESeVoK4B1ps4gAC2jvhHjCj1Wq1HCfLPbXBcADr5
	hj8XCE3YVD6MUn38r2VaziEqi40nJI3NqVhdRPIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649769358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5HN4RRhElPUMriOXjBINVM5/0ZsnAPDWmPCo3Ukvt5c=;
	b=E4Ify7zYHk4xDfkYF2/abOytjFiI650yhOtcmwfWctAws6HZdjDVV48Op9b0d7Md
	kMk8voU/qAzwtBLHxpWUgB/YBPvVpGXsqTnaDBbBO80LsC0bQwtCSd3Ma66+hoVxvB2
	/dewMFKrzGSxgJx2/JCxuSO9T7Po9uwYbrLMypa8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801deaa3b5-0d281340-1b51-445a-99c0-1b00583af3dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63a04cc9187662f138e16bf546550d4f57ca0fda8801fdfed665ea39258ed9b7
Date: Tue, 12 Apr 2022 13:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649769358
