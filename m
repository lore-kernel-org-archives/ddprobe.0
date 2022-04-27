Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470C733E5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 19:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651089058;
	h=To:Subject:From:Message-Id:Date;
	bh=lTCQP26BSZTmLqr6KOC9wRRNVxfoUbC3PYeZMbZ8ljM=;
	b=Hx597kAElnj1kn3TxSOuFoP6ZyNwzFYo9Y9ZglZdU5fLR7a3gFE6xc+IGjGvsQkv
	eh29FaE5i1D4aB3ct13/eHUT7ekxJB5PxXHk83d7J1SSuqaEZdIXI62E83perAVpOr7
	KvBVbCHy8fWnrOTTf5QQhcbWEpzcl4CVktReYcjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651089058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lTCQP26BSZTmLqr6KOC9wRRNVxfoUbC3PYeZMbZ8ljM=;
	b=N3z46rfJXFxTaaa/1ZZe+cj7egdresVqfKbc02krIMiFXA8yFy1j7YOwn7PTwxMY
	hqwpZ9EejklOPDL/hs1vDXNBIEVvyfNyjPw5o7igMgWZpQtoILUxnAQg+lSCLnLxZCA
	dFVgOOzGHp0btCg8om5jA7GmWb6hf9DQIc1z8ltA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c93a9f2-324df3c7-b71d-4fce-beba-5dcac370c321-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f1d58a81831f5ef2a1eaee5f61d2ee7623868870d0d263b4c2aee42a87aaa92
Date: Wed, 27 Apr 2022 19:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651089058
