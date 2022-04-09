Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC628A31
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 17:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649524738;
	h=To:Subject:From:Message-Id:Date;
	bh=FC04ZyE5GEbkfQuKnz4Yul+hCYMhNX+NVc3qTtcQ4hA=;
	b=LSZUxHzb4T0kxTHOiQvqiN1+LT9En1bU82hxxGuMb9x/EwYPKNtSpOzk1scmcAKH
	q1FNg3Pd3yI3DKNrAUhO1RNugTdzmjVKmawrRvI4wUSK5C6W0sIXY49zwIFKcIBFiFb
	unRqDrzeGK3EmR3s5vkZCxqBXU/n8+YdGgqdP2t4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649524738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FC04ZyE5GEbkfQuKnz4Yul+hCYMhNX+NVc3qTtcQ4hA=;
	b=a7sUBAtzneo8ZgxU7ZZMtxuJFlXg4hqe+1pqc+XJvUpLmIB8qRqhQk8KNzMyvrPU
	g5MurZNw2bizl1Ecs4ezul50U1PN95PPTnoRqUmSAXk+1oh9ug1QzYussIXVUDI3x+s
	WfwxyzvmVJlTE2/5utNDBGzNs9j81WQKnGzFeIWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f5608dd-0ce930ee-1799-426f-8a72-27fe4d32228d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67cfa0164ad6a0f7cb9511e420b882a05f197068c92d53c960ff0a4635cbf7cb
Date: Sat, 9 Apr 2022 17:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649524738
