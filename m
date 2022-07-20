Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136D84C6D
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658320612;
	h=To:Subject:From:Message-Id:Date;
	bh=xkBIHEONgZH116NAuH0JUf7C5xEK7sykhxnioqgalbk=;
	b=fA4/yuWM99gOV5zhnqC+ggTkaz7nhO6I9sH9wC4aYGw1fR48YMnBFdx+LTDXac0T
	xjV2pjAOAe8U/7B0eKXF1yrgjP61tZ5IIiJUjoqwpqVZ4zymB0dCrDii+UdUwvnWbKy
	tGJJX0aKzknIweofKkj555gRTmY7dhVrA0mFRNQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658320612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xkBIHEONgZH116NAuH0JUf7C5xEK7sykhxnioqgalbk=;
	b=MsZIaWKECAXgONsAujB61dQ2IXtD+Wmbd1KNNoj+AqsAIYMZ20QmPe5spAfZA0jO
	zm//yUdgFjqZAwQmsBgCLkOEe3jHvtRHhsJd7JumOgiACpDlJwxwDUcY1+KPzORnpLb
	bxA1YH9p+njBO5xhWs95oKYPctoQTy1Sc6AC5lW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b9c6bc6-60ba0086-ab41-4f03-ba5d-3fc1febaaa66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a89059636bc05dbc40d1faedf4edc0d3cab402ff974b69d9df650df42f496e44
Date: Wed, 20 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658320612
