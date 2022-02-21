Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E01E20F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645423884;
	h=To:Subject:From:Message-Id:Date;
	bh=dDQJ086U8nxPHTYnC3oIKDxggnSJxxgbltC+8Yq0aeQ=;
	b=Vimlk05fyQnTxINE5gj2+s5/O0MRFT8dvAtt++W1L2kQW0h5WssXKd/P1+oMwCFE
	8LPcEi4MOyZUpKz1RGC6Y/8duj6/Ei469SnuCDaQehEOY93KvF5cJSS6pJROW3XgWMY
	C4te9AeKgwhHvAYI+1+zeAt92bbIzCrfJ0PD6AZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645423884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dDQJ086U8nxPHTYnC3oIKDxggnSJxxgbltC+8Yq0aeQ=;
	b=A7fSJMArdzLgcrfFI3mWtD+3J2hLvuiem2/pCgKzXMcewUVX2GwvyweTIYJyHbHJ
	OhxTgo4PaGw5cusSYPa/+hoW3LklfdZ6CHn5oEHHBlEpKDvo/UG9vx9ZZ8PeFooC5i4
	cYNv3C3AJCxgDLjpuuvv493Sn1uL+Rayv3yvoG3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ae7f9b7-9242192a-1138-47bf-9d98-4c3c23637e61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef269dc47f355f4475feaeb2d3f10a3c9eb752b56364598728722234868cc763
Date: Mon, 21 Feb 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645423884
