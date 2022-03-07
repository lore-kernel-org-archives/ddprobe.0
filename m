Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C027C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646683284;
	h=To:Subject:From:Message-Id:Date;
	bh=j0Q7WjHw2c2kEh1H2+sxmJl3O/DfxD4dtl88xo5eKq4=;
	b=KqH41XF4t35dXM/Lo+T7N3I8uHzPW5UvjpOrM+idbVRtdZ3RFi7h3eEqVWAXhPct
	htqzg3HEBtnui4vpVTtPZNc0sAlP+QNoLAjWcjB8iu/gHj9h7IMEdnTZgjqtftX48Fz
	DOaWN7/tL6rBuU4aSH/cTKe9K+avFkbkFMOGqRLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646683284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j0Q7WjHw2c2kEh1H2+sxmJl3O/DfxD4dtl88xo5eKq4=;
	b=CKie2QrrnkrCUa14YX2G7wCATDd3+Qef5p/Pvw+a7tv0d2Hl/cVkZKNbGSVAUyZK
	uBgQKstdQxaDVh6pb8mxWEzirXhnu17KeJwXEBp6G/xTo0Kq+M7TDzRLB5DV4VznVI4
	HWhik4AdTnwNJzE+jFZ/9vYhjg3TLaDdmR3RlG6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65f8e4fb-7db09867-7152-4d13-a9c1-945c3981901d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dac9e3de9ce387c27876f676a0d6f42aff801fea916e3cc5b9b69d1dade26510
Date: Mon, 7 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646683284
