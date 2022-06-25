Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEBE290B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656181012;
	h=To:Subject:From:Message-Id:Date;
	bh=+KXNSbp9Inh9P5WJuQtE5br4dkFigcvXLBgjSAS7pso=;
	b=cNnQKiBdkza+rY6ahKsxrCQt8nrrLu8q21jnc4q7UStHVzVeHGyzwpGIAh91uF3+
	IHEiDDFhEoMF7qEVs2ClxQQT45mlwSOJdVjuX91CxNLDKcIR8K3d8209DMa8yCqZ31W
	f9mv1lKsudi1qBSVRuh7jNsfKeDTzZ24rsAE8MAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656181012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+KXNSbp9Inh9P5WJuQtE5br4dkFigcvXLBgjSAS7pso=;
	b=MjcE21JXqO2IE+19KjmfWvHGheJ8Tk1pFye2kZDP4RhgMOBw49U9MgxBhchtUrTp
	XwbLuZ/Zwz4lET/E4yIoDi6pyFSjM2h7YvnGTeekb9xgq9dxLp5FGNVAyV+KI+lr28d
	/gS1I98FSACmnX0Oh9DAiO/mtNL7ynkxMVbCrEnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c14b73d-692f4a2d-7ff6-45f3-9a36-2f764bb2de0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d7747d5fb8bb9383c3cd3289c17df59e0d25249e0e48ad7e96510207cb42a1
Date: Sat, 25 Jun 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656181012
