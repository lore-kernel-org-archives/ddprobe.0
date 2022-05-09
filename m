Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434047B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 19:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652123998;
	h=To:Subject:From:Message-Id:Date;
	bh=m0RwzOu0zvJlDmu97EB1XI1DMO+4B3ph9rnBt6/nXX4=;
	b=N0lymvpZVe0mlzXLQ9sT99yctYQbOx7CPf9HoSVx8CfrnDirOM/Z9DUR3MjmomdR
	PZT//kz+fKakNdQJSHV0DyJ9fs9txFfWXWE/mEzfGrZxAlIXzd3wda0uVPt37s31pWf
	LIoy05px1eBEbvbTj7iw/NrrS4m0WgIaxgmOmY2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652123998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m0RwzOu0zvJlDmu97EB1XI1DMO+4B3ph9rnBt6/nXX4=;
	b=C7xs9KflQaf+CEHYJKExnsXJXbb7n7ipSneEZP4Sxdjo/aYutl/PkfKPLOE6U6Jp
	ioJBKQpl1zL7Fs1ioj8rihcOJiNTi6AUMerSjMDVE/p8WX+tefDvIdogESUs5N0UdTl
	2sLll+81UmkzFgHSQapn+i5b/H+VjS9gHDoHrS5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aa43985b-f125ca1e-e3d0-4769-9f54-df7db91be2c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7d6b7ae4c43cfe51f73eedcd7313cd356cafa357323e7214b0403483d8b960b
Date: Mon, 9 May 2022 19:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652123998
