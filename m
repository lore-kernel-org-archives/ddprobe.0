Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEFA7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 16:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648484218;
	h=To:Subject:From:Message-Id:Date;
	bh=kABECX56gAYg0HQBjN5dX7twb9i+PvCuXb1LkQAiISE=;
	b=d6NS5XbRx3NVtkBK1EDHNzpcXXVHezp5kleeN1VKKYfw/j+I/hCzMunDLvXjTiad
	mrAvv70qEaFdGc9gwcofiNUOM0ap1Y254Pat5SfrF4GvMzernKttsek+VLWwiMpNGyR
	87yvyyVAFd/VK1N5hih7CKvGQLTtTyjfflHO/xnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648484218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kABECX56gAYg0HQBjN5dX7twb9i+PvCuXb1LkQAiISE=;
	b=Nm/rkuk34cR7jMI3UFi9qqL6OHlM92T3Zp3xEh971pFWPKjwbUFCnAm68Exl/rfq
	/6oyP79zXIeS2RVkbDSljqK4W6JbjDxfi0LYjAkmcau6AsLAaRbZOhvjbjswWppPzMB
	IDHluoMlR2arbk3FVkoZqSnI64nA3oJroMMgoVSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd150f57c-831f0a15-e7a3-4aff-b374-7ac523b0be58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26c544bb5bb3732cc0bc885755d83656edcda52e199f624a23e29b1843174f38
Date: Mon, 28 Mar 2022 16:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648484218
