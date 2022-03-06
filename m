Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB6510EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646556684;
	h=To:Subject:From:Message-Id:Date;
	bh=tq9ZxqJyoCiedAhxYr45pQzk2awZA+DTbrRPF3pxGHg=;
	b=gj0Ot7w0QwVqJPKmt9wWbIEJ07TWRnS6NKHjkFeGwaWMpNpB3qu8d1rNpI7oD+7i
	QyyAXMnHKQOexi1+f5You2DWnfkArgWT2LJVZkkJVp9iYJ1sAPbFmtZTVicJ1YGnphQ
	CBRdpkCSkj1kMySeUObFHbtXCJfH2VUzwVcazsA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646556684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tq9ZxqJyoCiedAhxYr45pQzk2awZA+DTbrRPF3pxGHg=;
	b=hSJ6LkwtyiuTri43OIY0iA92fflNlbYkWIq7bx+6dRfMrYD5+rNqc7qxtJU7A3TT
	MP5kNHbFdJIZAEv4VnnNhbtLBxeNt8cItdGfAa98Sd7IPEeDHVxjklGX95p49CEdPgN
	PwHNUaPuW11Gcta2F9s8mhzgrHiz3YSK4s7Pzf84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e6d21eb-4ee97c08-fd76-4a08-84c1-dcb785cf0035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 367cd0cae71ad3d3233cfc7b4c7a6ef9ba4d05365d4c2cf3c720e0017f30498e
Date: Sun, 6 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646556684
