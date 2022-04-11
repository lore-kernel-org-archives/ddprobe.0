Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E831363
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 09:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649668858;
	h=To:Subject:From:Message-Id:Date;
	bh=jAJR4O/7aMpLqj8ZdnQ19e/IAf9mmQ8KiyKhqHqiqkw=;
	b=l2vLK/xLEhNgIvaSs4BnRRg5Jd4eqelEn2ETHr8ZaJuHOwSdSjSnpg6N8vB1Q1TL
	rJM6jBw64OjdZUDmyNv3wU+/eb+Pod9KVhuuFUregB5BGyut1yD2RvLM4sc1BS9DCFU
	vL/axQTdVMZetKj6L3MloJp70Mrfx7WvlZLHOE+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649668858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jAJR4O/7aMpLqj8ZdnQ19e/IAf9mmQ8KiyKhqHqiqkw=;
	b=QWeMVUcPpicfH0VPzhpI/lgsuClmfdP9HB4Ina868MI+GfSjCwlQV+/2VNBCieGc
	jkLRp4KyqdcyG7t6SrD/zC3Io0dQB1XSRWCpkRYRXJ6rsvKOk+uhFBZZn/iQB+TIe5f
	iLgUfajzTxqTKzDIPDv9i4is1yn30Q64t6+CUjso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017ed21ab-0c3392bc-bea9-4360-8cf1-3fda1ad3b92d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75de6936041df33e6284182c06b3418645d65a6df2b71c8c5cb723340ff068f5
Date: Mon, 11 Apr 2022 09:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649668858
