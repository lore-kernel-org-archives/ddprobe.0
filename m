Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2982728E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 14:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652193959;
	h=To:Subject:From:Message-Id:Date;
	bh=bEgsOrSB0TZl3rU7//ub+JoS/rmxHhSsVw8xL8d3PTc=;
	b=GMZOlVNrKgMXXX28g+JbqKCHIZjVBuEv4CW4B664UEKrewLdkKagzokOQyGJceol
	TEKYVw0bQ+KFo7a7FA0r+LWunrW8VSLOfzIRNubw4r+HJDPLCnFTTbjtPtSPyeqRvvp
	VGQ+Wq0HzuovbjLWEHpwtO7opfWRGNx5M4+g9OH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652193959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bEgsOrSB0TZl3rU7//ub+JoS/rmxHhSsVw8xL8d3PTc=;
	b=RngtfBxCySsaDv23WiWsepyJPamQhdOiG4FYKDiRi2HC+uAc9TTBEdBeUqUk2raH
	elwxOP3Jc2MrdDw6ziQp6Qp0OOT+2BMbM18s8KvUNLC54ZHEgzB01xjXH2WZdTM/Ufm
	/9jLcrZ3US8XTG66eP2teOD8lBHUc26KVX0YxO7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae6f1d8b-a576c574-16dc-4826-9ac7-2b576040b58c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3bbf1e40a9fda96f7de7f4703664c7fbabcaf84547bf78c2a8ae4326ffe3ae0
Date: Tue, 10 May 2022 14:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652193959
