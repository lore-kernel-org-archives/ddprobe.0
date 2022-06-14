Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18AD1365
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655195579;
	h=To:Subject:From:Message-Id:Date;
	bh=vyDGUsQlOTao5fafLqgfWtnMrSN2LeFhslrjLZ/MmOQ=;
	b=CLE70ChuZybRdlj0Ny6tMLiz6n62nqAspaVfbgFzaVDCXLV0sUOLLyj8NUAew4zb
	dZzRIuh6MUzuBPx8y4j/muyzPRHrZrYXN+iLPgdKnec6ZUXCgjiD8W/18jzMJRT4Ssh
	MwsTumSJ/5pbssluO80rK1u3iIUzh3dpW8gWdu40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655195579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vyDGUsQlOTao5fafLqgfWtnMrSN2LeFhslrjLZ/MmOQ=;
	b=MtDa0F7VXZKNWYR+0Ll92i1uU2tRTZ6gY44wXQBNTrR6813omJKk69KhZyCqZMF7
	zSFO4Wu44hLVdiuYHIOm+ikJbxtxLgomPF6XWd46aVu/KBzlsiivzwv7RHJ7pMxXLRQ
	harrX7U55JPehSVp+xpanG7CeayXLBSpMYTaMePI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161583363-99cb05a5-1f48-4235-a847-de33925acc98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa7160f680d895327bfc260b840cc036321a09bc9259c1788beabc269b94f05d
Date: Tue, 14 Jun 2022 08:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655195579
