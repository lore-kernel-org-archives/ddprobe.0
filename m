Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF204687
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 01:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653616499;
	h=To:Subject:From:Message-Id:Date;
	bh=pO1pjdcd3B9hdJ4Yz/rp7aA/20KLa0UGMJiyBVUOAj8=;
	b=BhBIr5orCsauu1od8VNIxkEb3K5HgbYGXQp4hLVv35DoZlWpLmKVqrkzCn+uuQKg
	SHf3oUoDHOjx/EAel0xBiz95NqcxHdQ+vmXige0Up4I9meDCUY0ym//PER8gFB3rpGK
	NYp0QdY0Z7QZgmW/9Q1s6gpreqhiW5S84rAvCC0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653616499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pO1pjdcd3B9hdJ4Yz/rp7aA/20KLa0UGMJiyBVUOAj8=;
	b=EPKGTurNxNJAEMO5wBG0mdXVzVoN2JJNTpDZmSYNPF1dz4Ko1hu3S+XFRXwBWYiU
	ND3UOV4uuMQrWSDcZP2S1g0Wf3w42Yl0+rgdM7sisVsrHTMdFGqjHfJh99FJtR4L7L3
	aRHvA6AIwgYdJYm8M+3Svci9qTlhOklvmp0RT660=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103395a49-aa596e2d-fe25-4c69-83c2-bdbfd5312ef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51d56d2f4d5a2b4c4df3d45b24826d9db918bf497e4cf32c658e1061330d2ba8
Date: Fri, 27 May 2022 01:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653616499
