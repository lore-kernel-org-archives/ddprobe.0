Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164AD28EB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 14:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651414378;
	h=To:Subject:From:Message-Id:Date;
	bh=M66gOYweqLCv+yrb9CdiaKINeghIt1z7G6ziFbSVUdw=;
	b=h5rd/LjHVR/7382dDOqw8qEtSUW1Xpzwhth/w2P5cmo04BjNqMvuN0weWe+pndvO
	kPUPXnb4B9iKy1DrcR2/BOJPL5kQ6zR4p9h/BPk877tv0BiETh274XjzDOqfM6E30Le
	LK7cAHQ6Y6iCwDwUa9WwQsC3k9wGx5HpG9MABB58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651414378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M66gOYweqLCv+yrb9CdiaKINeghIt1z7G6ziFbSVUdw=;
	b=V+WTluNBFhEWuM7SLx/52tfxZsNSg7Owge0LWI6XYD19Wb6bLDKCcZGqkpR1RUOC
	r4Sg8JxhEYYxNs5QcnO+PTlb7WWGvHc0x30mmxtSTWAbwSS6v2psMl9fBRMBt6MF3mL
	xtYzBJWir/o+Yg0P4i3XkKAfvvnV39fx7dCCKfqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ff7a70e-6cf1e8b8-8fe7-4bbe-814b-5ecf58b6bd9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7099f723036d313f8113674e39dbc135765d8fdc1f09d2a9354d0a3501a8e7aa
Date: Sun, 1 May 2022 14:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651414378
