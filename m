Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCEC3B5A
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645086384;
	h=To:Subject:From:Message-Id:Date;
	bh=1sfbj9tvP+2k3kp00Z0/Rkavn4sxwjRf6EyB/IKhcAc=;
	b=eSUfpbib8x1LLnaF4FZFSRC8s0AcsR+MJJuSwHzy7Mb/I2UgarnTJECREIlLtdr9
	Tr00XfMR9o6fv19ApdJhbEkkUuxFfCl34v1GDnEEIgMElhs9hvPEH48VL01TifS34aF
	6o9tQwAGeLaRcDZcqa4bfeH6oF1RTbEnlSoICaUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645086384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1sfbj9tvP+2k3kp00Z0/Rkavn4sxwjRf6EyB/IKhcAc=;
	b=h/n1tkgCm6AxMTrrD7Z921X196kE644hyMvM7SWvlihHNwIdV//IsPH7VrVgqbcB
	DJztADr4XkZJ5gbCUveRxgvJvvAUoZHgf4GxYFI+0mJQ1Trlz7rwcbir+KFFvmHmaeI
	SNyl7dygtmvQJhGTddyFSL1AUodjAhTMsFOG6yOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06ca2248-ba3c5afd-6c58-4e1c-8ef3-5da83be30163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd9f1dd7367868e1b69c7a46c0ac2fec355e123d7ac6277a388bbcd2c0ac0e7a
Date: Thu, 17 Feb 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645086384
