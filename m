Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3046D1857
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 06:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655965019;
	h=To:Subject:From:Message-Id:Date;
	bh=kdCLdqg9f4HlEhw3Z92rGcQbHkr4NoJfEe16pfog6hU=;
	b=OhycVTpUurbDHCXdKv2p8XhKU+jpsJ5yfXjqvb3qTypbWJm3ykNeawtGeVaNu9m2
	nto+mN7wOSt/5Q05n+ObtEj5Sfoq3OkDN9JxWmPtJT7XqdV9rVCme0dtFcj5OAF7Q8T
	M1LyQzLQwMCfOlVZsZgks7JY9YSaEbcuOBgPZ3y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655965019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kdCLdqg9f4HlEhw3Z92rGcQbHkr4NoJfEe16pfog6hU=;
	b=XqjSSYQva4ICuVnrm5uqXjlTc6Hbn66Yqw9kzijle/xi08yOL1SXxrMSrxb6z7T4
	EXHfcWX7JQNNeeJMoVqSUmztutJs57xx4o4X5nxwxcErB5qHpHkCUKjzMpuY8OmIdUh
	MG81yWb+N7BSA6dmJx88BZKjamaKiJzUkgQ/YOO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f34ec89-3788f88e-b2b0-4e51-97e4-9cf7215502ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5a126c55242f7e348d714f80db356e399f1194dbf8343b76aa856b9a4cdec32
Date: Thu, 23 Jun 2022 06:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655965019
