Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BA01852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 03:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652843399;
	h=To:Subject:From:Message-Id:Date;
	bh=DIpycfj7q4Y1oxgD8Yb0AmDvn3YRQpmklqy5oemGAEM=;
	b=Y8wSPNOC9Y8pMhJ35m4sUFhKBlNtBZWQT9N1i0I+IK1V3Jnrl79xM+oK6u40k161
	eCAbF6YvyBXU6KJtnmu/i3oqut2Qp3axOUbpZ+L2aNblXf+hVOJi4OF3dBvt8/GzdXu
	Petwf7YJEEXwBrYxnb6dTBvXAsI7T2wQZYD+ag5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652843399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DIpycfj7q4Y1oxgD8Yb0AmDvn3YRQpmklqy5oemGAEM=;
	b=QKbntVd5YEeheUt3YVMprxs0xG3liC0qBTueikZwEsO/qCVScTrQYnsV+C60v7NL
	KCoB2Z9nnNfJwAXvJPw0yTX0Np/VZpOOQAWOCzavGHERVBbamhWpap8T9EWSSro1KZV
	rBbo/jIwC5raNEbEBjPKG/drL2XDQ3YCRDODKKy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d524c8d5-fe5a61fc-2189-445c-bde6-f1e086c37cf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7aff52d573b882adb29ba22205b1018f5b90718742b5b76363789d020116bc18
Date: Wed, 18 May 2022 03:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652843399
