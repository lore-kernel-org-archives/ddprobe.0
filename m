Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E02ED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647231384;
	h=To:Subject:From:Message-Id:Date;
	bh=X0vCQh0eGGjoT8j935JieOhsb6HUmE62ixFuBFpvg1M=;
	b=B6iSo9deBqpdiz/HlNp+lIwJjVdyn6eKzMXVmNYyJLbWbY+mWb/fk9TzDAINpnk0
	VE/pIPaZ1n6chNh9rM2scq5pgyD65i4SqzNXgtAmxx6r9TyFwHZa7P1zn/Nw28JKi5U
	FpjXtOWUYWChyq2u6o1p1dTCYwM4hzBGt/vcMfI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647231384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X0vCQh0eGGjoT8j935JieOhsb6HUmE62ixFuBFpvg1M=;
	b=YbRqHZGHssrZ3xl9NM5gftGG9CTaEBairwbQynFXcUzEaJNL8mU//uQT9OLFBKyG
	3hl3/rvZ0XyiDQ37mX7g//MkqqIOjoobhlPUkuvar3qDETtxyF7CShxOMjbQv+MXlex
	TlptUG8Ph0AOxGRkL/w/zPeWzPstA5RGers+x7Wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86a43ccc-bd20133e-2ac4-4e76-a970-4a5e5ddaa93a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92246c99226871a1253723f5225ebf7441c616942164ca37d1f67e8230edd61d
Date: Mon, 14 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647231384
