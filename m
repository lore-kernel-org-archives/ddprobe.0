Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70E357D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647875185;
	h=To:Subject:From:Message-Id:Date;
	bh=4jzsyBajkFesi/Xu2zFlUPDdyUGRClFOspYMeLenoO4=;
	b=BUghBbWfKJIqrzONQjeZDbRWk/cgRN747iu9DkCrcgFge+1KD3tdjOuCB4AZBujf
	ydsxGi8j1BkAdNYAPDFAZOvbxLlt2QS7CHwigZHuZTsLIY8lksKIWNZDh2iscLJ/why
	TtWr2q2iPVJmTkKaNpAHuSSWsaHx/jOL0jgjkgKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647875185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4jzsyBajkFesi/Xu2zFlUPDdyUGRClFOspYMeLenoO4=;
	b=H7NKzGX9mO6rtXMq1ZG9xCztKXVPznPA7/DX47jrgKuqzrzWp5u39i5HdlXFQG/H
	Jm8GfOVzmrbkLpZLeALQ0i/qhBK1/WUIFfuyCWn9Q0NbnVo6UVme4zc3Y6KR0R+wjyF
	FKBApXmpqZJG5KdWgTZuKUB2oaWI1+2EMOki5b24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad03d897-2fd7dd7b-c7b4-4809-ad37-872e3f3bb2b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c832cd35d19b1c82640eb8d723173a8f49e68bb41393a32b24253add573df97
Date: Mon, 21 Mar 2022 15:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647875184
