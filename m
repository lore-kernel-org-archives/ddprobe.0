Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725B215A5
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660096852;
	h=To:Subject:From:Message-Id:Date;
	bh=gv01nNvcV5mVBu6Xp6I6c+gQTqVuFjCIgcmUz9SgzRU=;
	b=kOUbqZJtZeYSGUCqslsXwWLwsvWaxxJawLY0jsMlsBfXfrap2Eisqc+dmcTqR9EO
	MC3kI13NCaDAZZWtzVNmZuzTo72G5dVzDZLhknxLdpOyQD7y/6ZFeQ6TRzuOhYNzYdr
	sxA98VaWpKBLWJGc5d3+vtRLhNmiATM1CoP4S3cw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660096852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gv01nNvcV5mVBu6Xp6I6c+gQTqVuFjCIgcmUz9SgzRU=;
	b=EUUVbf4gamFYmS/1YOJqCPIczVWuwGaDEMect+Q0qoklYKNPnXpH0t7Mjin5fRwE
	p4veXVPbEEUbNBfQgQUifPZ1m+yFoUf2oowQb4SwgqfC5Pn2wswq1+XdkqhhPQyv12n
	LCmn4FnYeGeE71BX6gN/rvTq6WYXa/eumOX4hH1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182857bb27d-4a878119-07f4-4179-9e38-f5c8a688b301-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 953fd7f0153bbf1ef0cbcea9625882a5e514e0663209d3c1c8a261912bf3ad67
Date: Wed, 10 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660096852
