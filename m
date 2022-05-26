Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC791841
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 16:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653582419;
	h=To:Subject:From:Message-Id:Date;
	bh=y0fIeIpszyNsDRI31f5M8sH8kZoxVAvZPpJ+P8kz3lc=;
	b=lG/2fMntS+0LX6HIgni9FapperattaHARB2W5vG0/E1CTGXHLWbFmpZ4Zf/uC+ky
	ZiVaWsiqKQ+c+YjAHTGq/SHZWEZlk0NJR1BHVsbrCxSArprW7Cw82SY6jJNbAcPRBRl
	DldzIwX1VOjp6UnY5yJ1+Rk3tJEG6MGYjeshQ2F8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653582419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y0fIeIpszyNsDRI31f5M8sH8kZoxVAvZPpJ+P8kz3lc=;
	b=BSGVYcHSbBupwQngFvwqCG1pY7IuCELwrAoRFve6cBU//iaxvTKRXlUjhr0nh2uL
	EI5FnPu9+Dsu47ALnwxPfqABJWHRPxHreYDUR5fnl4lzBzVn0pPh+lR3MwdvHouZCCK
	rVefxPypEqQy4hLx8Qq6QRw3RSANELdUU7ldSaoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101315561-4ac4ee04-1565-4197-873c-a9db1c0d2faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95b5ae0072db44404755c7a367dc67a40d19aabd7ffdf205c03696b60e1cdb4b
Date: Thu, 26 May 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653582419
