Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDEEE367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657166812;
	h=To:Subject:From:Message-Id:Date;
	bh=lXIJQKdlH1acC6EgXoF0pRh5o5VkU586lEmSIuaH5Fg=;
	b=hUzF9aFfAAc7A0VV1nrzA222bJSJJ/Y4mVzCgeAQqQiQp3y9IYedr84Fs2rG5rtx
	3JIzjLxT+xHYeGxypOmtF404KCVDuSz8hAJHz1PJJTYgpwNUkSKi2yp2wmU7gA4nbz5
	/kuceRUXsh8y5zVT+UV2l8tGzOAcy0an7TNxK0EI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657166812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lXIJQKdlH1acC6EgXoF0pRh5o5VkU586lEmSIuaH5Fg=;
	b=RXe1Ca5omD7Tj3MsIGx4lvuhGxPhTTK7KeBFUFcoeHfp70ZINtKmo/ZtBmQqtZYY
	gs8DKsvvqxJU1wDpdPVJiQ3SAnoeNXsjy05mekbGjJxng3cPvfObseSkLu1pYEw2CCk
	zWC5QKNtCx2bAkLAP/LAnYtrU45lqkTxMsyHwMkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6d6d459-d2a38e5a-343c-4348-9079-a35460c0a6aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64d64f85488bbd6be32ed057f2d0dd319d5c4bfd3ec82bf432d6984b13f62f94
Date: Thu, 7 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657166812
