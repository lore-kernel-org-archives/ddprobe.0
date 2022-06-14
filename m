Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFC71FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 19:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655234219;
	h=To:Subject:From:Message-Id:Date;
	bh=K7RpJi6uJJlr2eR8Ee8qAoGBdZxUk/IDIhoB7WlU9iA=;
	b=XLfAPZJec2F5KTIq8mmlwNkaoCeoHFvY9XpPcc4s3zuzNN0KPI7D6h8n0djkSUTe
	gMLy96Ie4OvjMKjxi3TzkL5xvqzcUj6/qTBdDs1QodSBR529gi1btMlGJBzlo4pUvyx
	PTv4Mp5VJAwrCBSSn1z/q1U2Vc4eqsh4JLE1dSCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655234219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K7RpJi6uJJlr2eR8Ee8qAoGBdZxUk/IDIhoB7WlU9iA=;
	b=Uu7YnzjQwQsIjTYb7nK01Sm2fDzzRWowwYWcBU3FVHYY0wN6DeDh68s3/50Wmf7E
	RklkOjp2NdLrkC6h4McWfWynQ6khK+lRs1gp5qS2+7bsUJlZSGvnWFnxdPaE2CguVG/
	KivqgcPtr+aOoAdElXFucRzAlWMB5307JUcruPg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163a5cd0f-1d1a00e2-d7d2-45e8-968e-928acf04a6a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d5515c9e6d3a4894ea19315c8d41b6d85fbd26229bcf6e110181aff0cfe3586
Date: Tue, 14 Jun 2022 19:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655234219
