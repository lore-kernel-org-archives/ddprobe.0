Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3A67A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 05:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650605158;
	h=To:Subject:From:Message-Id:Date;
	bh=7cMt4GGyfdyl4zMu8HwJE3/s5Abl2n+Ye3mZdgsskuQ=;
	b=bDUiAOXVZZCbVZsu416Oufs9gwzX6YvQnTsKJC7O7qTh4N7u5I5aIzsymAiC7YII
	lt2vx4DQbk4R1QE+krVjkyFiVz0mv/6vkL6NRVEwJ9wunz1j0XMUkxJKd3yTkf99Uup
	3NcjHJbhts8b8yTV6hASESpxRr/X6z283P6y/NY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650605158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7cMt4GGyfdyl4zMu8HwJE3/s5Abl2n+Ye3mZdgsskuQ=;
	b=RBj6G/4Ff5cfT/fy/ME+JOZx4hLC9TealnmcFoX+Qr8IKQ9Ygg8qsAObkeHG+LTs
	U2xydzdDwJtMVfB8BRWEVTi8YMcxsQFXi9P0jKg4suEYKKqP50vcLYrkQTCUXr+uXMT
	zKYWlK41uoX5V9ral1Z2MvlUZFcbMFIuh4aXo2UE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804fbbef62-cb63011f-6f4a-4826-b9e5-17597b295b6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 591ca36b0f0cfa1545d3727535d9d460f50028a29e3e4d90e91d9705576ab71d
Date: Fri, 22 Apr 2022 05:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650605158
