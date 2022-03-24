Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBEB7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 23:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648164538;
	h=To:Subject:From:Message-Id:Date;
	bh=MAJuvLXHW6ndL2Pc+5R+MD3DNLHbDX5cEvf0Kj16lRE=;
	b=hWWpLUJzyzM3lEuA3ik1jUN5p+TN5ZT/iXGzYji3yfXcRgPLsTWZGeLNyeEqlFaV
	FSwqEpCmaWkQ5cbpR1a9X4uwQWsMx/ZSYWLUBqRwFDZOBvyHopUUMvMtOdMJTQvgLJR
	3QySwTP7vhGsflHYJILutI0W3fsPeBUf/Uv3UCmM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648164538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MAJuvLXHW6ndL2Pc+5R+MD3DNLHbDX5cEvf0Kj16lRE=;
	b=bY0i6Aa3TpozIQ0h6rzrifnXMr3dVWLoIwCGLJWlUYkicukHfUwGWcm12PMqUhe/
	S7IORfYJBw+iWp6AnRc88JfWTtJcUTP5Q91m7/BpY+AqFvqVU0NkNePcBb0a++5g+vU
	xx+CxF3GDgoJQsTsxi2h6NXlmP3GA8HkIFtxRkVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe4307a1-977c823f-3885-4412-903e-5c3027f80093-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24339bfa792d8eb209c490ab1aaaaa9c53198da79e0e78bc6122f1970cfc2c0d
Date: Thu, 24 Mar 2022 23:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648164538
