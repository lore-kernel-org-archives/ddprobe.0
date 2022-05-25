Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0D2EC4
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 12:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653483059;
	h=To:Subject:From:Message-Id:Date;
	bh=6ndEeNUztdQstRpSCwGXguedgvb+WeUrWAEMr1HxGfc=;
	b=aBmYD8YGVJAMrx+MWo0J2B8r3toUvmrL+6F8QvNM7k0hQu4bPHOFBikvDX/opGcL
	RDzlFsPm94Jiun20txcXknxGaJyzww5HSWogL7GlHTxwflV2TVgn3m+PqhAP3gztY4U
	OCxW88tJFwd046iqvqouTAvN3UAOXMfGpf2mKa9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653483059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ndEeNUztdQstRpSCwGXguedgvb+WeUrWAEMr1HxGfc=;
	b=frgHh0rXDBTjFlrLuA/OijkmghjGf9G6OyJSl7u1uSdNHOcNjA+oeKPLWLHNyMa9
	SoGz5mbI73NkBv6aJFPoRiC2/DKJCL5l4gMtFZBGhgUDXMqf1urfSDlra4ZDUfQRYAf
	pA1YCUXHwcXsCADz/fy8pqStueMJKb+d2piOyiX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fb45387c-046a5aaa-94d4-41bc-a149-f3a8209fd85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e7fd8d52a60afeb4b2e25a17df1dc4a82330629c2e63a8594f1e0a54ba2c0ba
Date: Wed, 25 May 2022 12:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653483059
