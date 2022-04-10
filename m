Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E027D1375
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 15:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649605978;
	h=To:Subject:From:Message-Id:Date;
	bh=lA/fltlk3XWQVBVrVtIEYcj9FjiM06rKR+jnebAac+g=;
	b=Hli8XFNDOwqPuTAT+SDUcqPzwjCAT+3mdxlnmiE4JWUfzpkYABf0mlR5Jy2p0nBg
	EyTClIcwXrxaQQe578lTFv9WCspdlWEuAPcOd9pwhcabfNVkotWQ4KR+XFm+rPfnBNb
	qC5zuQKQPqugt27v39M5alcuhQXUwCWgGdRA18Ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649605978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lA/fltlk3XWQVBVrVtIEYcj9FjiM06rKR+jnebAac+g=;
	b=kCl6BxPTNqb089WuDfyX9wBZ4R1/T4T11KDGi+9kbl3s8EVBG6McAeVf7Tc04Gd5
	XDFwIXvQ9O6c8NTz0+Mk3hu74ZupDF3MZ7rAfIgW2jFM/mKjtqQyRF7xKmIuE9jyNyI
	QH6YLyfmVGbSm0m8UIzkVT4/epk919BPdyb1UFlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180142da8a9-29e4e79d-4f7d-4d63-9e53-58e646f7df46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3235a1644668c11eab224d7ab8fff6c9ca8248d31637c139ef2f90d312bac8d
Date: Sun, 10 Apr 2022 15:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649605978
