Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629137F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661295652;
	h=To:Subject:From:Message-Id:Date;
	bh=e+obGNJFFnkYYYs9Fq7e0iqcTbmUIzRJSFBnXI/tJLI=;
	b=bUuK0isc7SlTaABJiNWkBRWoX+yjaOqTj3ukHgG9UTxaMu3ORwZop88hni5O3eYS
	A+XX1MH4z8Fb0jtuuRdxMNl03QgPCSoOyNMN24SpeKROHAleGMPk8Yq3rsIohANCkmO
	NyqiaUNhj72LkPGRNx+whC8q+Dw8omxPrb4nEInY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661295652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e+obGNJFFnkYYYs9Fq7e0iqcTbmUIzRJSFBnXI/tJLI=;
	b=jf/cCZJk/MRsNp/eVgmjQg6PiIehTVQShNEnnCZwf7COd5zv7UW6Dw+d6eqTYUPF
	aZxgaqbc0rk7gZ2KTq9Bjq7/srKYMMEuWk5iZffIa99y6fIAcFUVpbjHtzSW+parUmn
	dB92UUiStAABVXdDAcnNGb6mXk2zgdy2ari5kwCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ccefeecd-4f61267b-acef-4631-a62e-84e314d47172-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c368750a51cba7ec724bc9279653ef6005253c51fe75e475f9f6afd1729eda91
Date: Tue, 23 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661295652
