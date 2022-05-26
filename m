Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E68FEC4
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 06:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653548279;
	h=To:Subject:From:Message-Id:Date;
	bh=JviDSnzJxqpHFmIkelFw1Jl3+kFJaF4omBwVv0lEFFg=;
	b=chQqwOhDWvA52GsyBeWNA3ZTo6h5VkXVIBK9/NIJGw3hQJ1pByfKn3LpWNd1atZK
	yAfIdObLi+7m6gKXrzGompOgtEgjALjhYdb+4kiGoq0wvmf56nB+6y42gS12Z5tR+Nr
	l8t9YGsdExVq2qWo0mjjhOJCDAmmaj8vDza0yyiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653548279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JviDSnzJxqpHFmIkelFw1Jl3+kFJaF4omBwVv0lEFFg=;
	b=Er6e67sGkcyioJKk0hBLaRORG/Vhqkk8lLKkCPTyR5ewzgs0bDjnUzutx+3DfQMp
	jYIYH/IaiXwrIJy5cGsbV21pPu2Ke+rCOgEP+wS9wHZRJ7Na9SAwuomuo4INlTHp32h
	O48CGXmMIe3DqRxfALZ1jDOHEj5HpROqzz3Y4f1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff286636-f93b9927-9b33-4eda-b57c-d0b913e10696-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe9f67fadd43de06de324932f42e8f00b0c0f69380829dc99d13495efb92354
Date: Thu, 26 May 2022 06:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653548279
