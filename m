Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D49F7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659502252;
	h=To:Subject:From:Message-Id:Date;
	bh=O/jiQPUbnqtGdiDiYf7Ki1CLWgomMtBh4xa8KJ56f2Y=;
	b=Fqir3lig2B/GYZx4iGDCFGjSKTLJOzlGWbpm3vu4Q52Y+zZOVWg9/VN6XXHS5Rdm
	HiBpBahHf1T3bM+mrLY7eAWBN8nkFIu0au8yQFwVQ49ax0NXADTIBDF8VieYutheupN
	xlVM5rhuhqf0J3uKyRQ+Sz4dAHovVBiKmtmA4oEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659502252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O/jiQPUbnqtGdiDiYf7Ki1CLWgomMtBh4xa8KJ56f2Y=;
	b=hITe4SJEqzMcndP9hLxrNvRi0s7NnV6DYyNjwx3t8Lk4/d+IxZ9mTrFqN/jlmuOz
	0PsaRWz/1En+CvgX1SVqZCBZN5/9gQZWfSw6khfVzJhx2am5pNE7WGSOgXp0j/EGssX
	PJstmjocoK9/MVmxs0A0oiVAi3K+2dZDrLpz62b4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182620ad224-1c84cfa4-0a63-43c8-9610-d81221b8fa7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca699cf1a12297ef8ede413ab2a9533d402fadb2e1961a59af40c3ba4d02dc2
Date: Wed, 3 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659502252
