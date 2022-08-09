Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BDB443D
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660068053;
	h=To:Subject:From:Message-Id:Date;
	bh=j/W916rC95aQe0we96k6rJVSPQuNf5p1SV/nDJ37unY=;
	b=g/tIiYmuO3+4tebtf1kWfGNkTzHQO2l+8UfW7hp3L4N2mijMnmVf1+nJZY45+eOF
	K4j4c8Jg2kocQZF7M2MvUNcPmz4gd0R35irtxXsW2zFH9qtHLwRXGgSQTku2KzbmsRy
	WJh9mMy8gAM7zXgeGL2NBYgyT92VdFa5sfkCEIUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660068053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/W916rC95aQe0we96k6rJVSPQuNf5p1SV/nDJ37unY=;
	b=M+hn687UIFa1J3oR6i+xN8XuHhlXqCVh4/mDFlf9tKtooSe3kYHW0ahiU0bnT/O3
	8l0QUPMksmGheNo9zhGJzZfLYYz8HMe+ZsRUSJ2BSj7uKOff7h06SD/bg22XaQC06V7
	BCxdTWAxWKQE+BmKogL0RUx2t2F+JYhNTL6MELYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283c43e80-dde830a3-e7ee-433c-b82e-2ac4da314d83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9706413527d41e875356103a5db1cc09f758943ad2f011289c8bf202fa4605b5
Date: Tue, 9 Aug 2022 18:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660068052
