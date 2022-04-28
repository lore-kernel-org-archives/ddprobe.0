Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B06D138F
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 21:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651182238;
	h=To:Subject:From:Message-Id:Date;
	bh=PuRJohSnX3hIhZVaF29omoaaZKiqhvbxuNwJQnjyE/w=;
	b=STG50aD97lUL4ysXwnLe6Q/aF8vP8jNaWgLfLZtTmdCSq7z9ugtZ640CvZ9s8ezQ
	wu2tbGphypmPMJDC0wdMjO237pyh7cuk0AkX4vVF4XzCFiuP387gPo7sP7HrNS2LWfw
	1OkPyPIJ5z2yVYHnf9MEgizFDK5YTOorPIIGUi7c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651182238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PuRJohSnX3hIhZVaF29omoaaZKiqhvbxuNwJQnjyE/w=;
	b=RG/eVtr9rYeGkiJoolVMNKSeNnZcUY2E9tR09fHgCkY5ofabQQlHr1SYUQoxDHXK
	lY4GU55LdngFR4wxDXZEJorSl0rY9e3bPTy0mBTW7f0Mtuu0eqrLwSWYDTgY6M8o3fH
	Sj5/4szahGE6lXiodAzq9wbqLw8Ocn/feu1l6sSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072217a85-d6f36521-94c3-41ef-9d38-75db2cd0ff61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dbedaa8cc29c389aa7e04a2abdce73babed867a985257333bbcd67e7424b5a7
Date: Thu, 28 Apr 2022 21:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651182238
