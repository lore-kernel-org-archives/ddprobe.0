Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813A47C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645860084;
	h=To:Subject:From:Message-Id:Date;
	bh=IaIacx5VkR9T4Jo818zBgphzkP+P0FchqoizKnicX2M=;
	b=IFaLD1FieLuIjNTgsjn1uCU26oGGRUx5U2q2uLaVTYHjQvIBgcTw7dT2Zsc3b604
	YpxGdGnH9RRYtFnMbdfTXNZUSy7SIqQsUOo8zNKSMFxcYqR78hZ6M2gt8ni/fBSa80o
	qM/kKdmzP7W4q9I+H3NwYYdcx+0/OIc12kw7veLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645860084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IaIacx5VkR9T4Jo818zBgphzkP+P0FchqoizKnicX2M=;
	b=BpbDDJS6By+L2peGzJUZJm2N3AOsuP/SFF4d0N3K78drUlY5/VRNnhKsJXqssV9J
	A3+1wrliE4MSkbM/1LbEr8CCMGO48AuW8KjJOGOQkTaKWZfJHrkEG2wtBH2s4RBXkUk
	/4CI1ByN9eEovFsRpkGgXDnm/im5Q/U0PAhDApKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34e7dc0f-cde16313-9897-49a8-931b-f39f1074ea7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94011f6f827c7c7c1f60f38aa34cae90232212fd813645b75b9ed59870097bd1
Date: Sat, 26 Feb 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645860084
