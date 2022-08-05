Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530547C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659700252;
	h=To:Subject:From:Message-Id:Date;
	bh=wgs/TJJ3vVzQLoJQUAkCWjZYTcvKL2l9fuG+TE2zYl0=;
	b=Qgd9gX4DJKq9snL5bndyXrttC1vZUzfVUNnMsMqotkSkO0lQpZBawzrBowGAkbJa
	QAWsEOkM8XWKqJSH6JUMEOVPt1ucOP5VpM5i1jv4sOJuYGyxKyxIWiM8EodfRlbSddh
	Fj12DRmNd/x7ykjNNKRRXs09lRkndA1Tu5alMJuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659700252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wgs/TJJ3vVzQLoJQUAkCWjZYTcvKL2l9fuG+TE2zYl0=;
	b=gAqrgNCAIf9ePvG2b4DAtZUTdtUs4AQm2t0BMr2ttRO8IzKL9/wA4dM/JcHN9L8h
	O+n2Jz3YnE3ls0sas8R8M3kaHy1WJU13v5qQyl7y4SQIhqqDt9Jp4YRBcwlCpbr2duV
	WqgJxKW9IXsRTxTSY7ochFFjf82P+DmWd3GjBG0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826dd80f99-3e9503e8-825f-48be-b6ac-24bfdce61b74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9254ab48c0edfe00c651697e0be5db72e636a337637abdcba33de846b56e46a7
Date: Fri, 5 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659700252
