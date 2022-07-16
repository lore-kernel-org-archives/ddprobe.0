Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8187A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657984012;
	h=To:Subject:From:Message-Id:Date;
	bh=9H8KO4Ti+b30tjziohb3hNuug7vUMmKKEzqPUrYHNqg=;
	b=dG2u0t4aCcO7C8yRHQ2Jlegnz/mCefUbOB9z2jXzq+YswC5l5vmOrlDxCNOvO4jV
	zdnKz5kcXkhdhMi0p5uh91izxncgcN+jlJlUJw8VT1L9Nbm+UV6i/LW5KsEnBmLKmTs
	4F/bBiE5mUnEZ9pmWPieMGqYV/SAOe5/FKdwHWvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657984012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9H8KO4Ti+b30tjziohb3hNuug7vUMmKKEzqPUrYHNqg=;
	b=Jb4zJipHMj2PfYIEADdzRSbDPuOgSiCeG2T9jRMHhQq9EDO5K1tLDb+dM6e+iSrG
	AdrgXR/JuDa+qpBGmQDcJUkPbpw+/BPzZ1idrgoBqpF4efa1QC2C9W3kPWIl7IwRX+k
	FUPSHa8lYM3oiXQtVq8z8+0XmiARVQw7N4oI6YvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182078c4ff5-f60145d7-3214-466b-a25d-727354f5f7a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c355feafc4762df1192d500b0c538b54f810c3903e36712dd1b87167f128f922
Date: Sat, 16 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657984012
