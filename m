Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47413A20
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661227252;
	h=To:Subject:From:Message-Id:Date;
	bh=x6li8F4QeyOSCtrUMPS+JtDkQeSneMCc/JnltX9glB0=;
	b=gIGnRmoKBLTjvxOhpBbAcW3p6fvsD8QKAEOSSI1NiGsk1gJczJedLMzaLjHIyVfm
	cXbp+eQeTAI+Gw/kx4kgUGv/iARq4+CtU3F0TZ27Uva3Qppl9X5WfjfzCZuQvYCXAvd
	a3mHIdBivFcYu+OeuLa22indj4L7K89lqbA7Y7k0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661227252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x6li8F4QeyOSCtrUMPS+JtDkQeSneMCc/JnltX9glB0=;
	b=hh5ycOng3/VWGCsQjeXNzgQ/vbc1Xzio2LCM/BSr3pK+n2/YKFkTRI/0PbBkhkxa
	cSLLjljZRQ+jCZ7xe5r86ILVwjR7LoK3Ym9b8ass6LK5ezCF7og/7s6h4lV3lLT3AJv
	KJlbRAHqjCXk4inFhBLeGPUynLUYyhvBo/bqaij4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8dc3b47-1f21d378-8d1a-48e0-ac63-0e79ac75f09c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78bdb8c1ba6459eb7b6c62378a92c54e1d4929891973911cfb6ab0932f1fe2fc
Date: Tue, 23 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661227252
