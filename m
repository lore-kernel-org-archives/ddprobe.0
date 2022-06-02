Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9D7363
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 00:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654128359;
	h=To:Subject:From:Message-Id:Date;
	bh=l0vnJlOJlL3o6/dSk8iSbv8k4BkspiV/42nKjDnu4cs=;
	b=MP6QBqnNnmCHRpJ/pmU+tLQleMYZAMz5+OAgHnOOuEqx3XTlCBZi8LYum7tYp3Gw
	e6g6urPINYR3evP3hXbuM1tmCemVr+bqJzP5vgzCDFu0iFgjfUTRAKAkkzsdCom157V
	EL+Kgyv0lMp7RH3iEit8J6v5KVJxOGl98tKBpuOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654128359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l0vnJlOJlL3o6/dSk8iSbv8k4BkspiV/42nKjDnu4cs=;
	b=VBEYUmaYfLG3rInAYtYflr+5RXXlQqqveFllmwVurPQ1s9ykrAHPxe6Y4cnVG59p
	zTlT2iSqJKVpOck768m8zkhADyPoGruJJS6Ato+9hkM6XoPCpmqn/f0q1FkrGQPwGzv
	d3nDZ7MnAvgFyMG76ENlaNqh4ALNuAWLIEI0noME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018121bbb78f-0abd34ce-6fc4-4b64-8db1-f46b2580587f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c10b65dac8b4578ab6057a36c65d70eed67d15feaa51f2cc0a92e41d59dd5e8
Date: Thu, 2 Jun 2022 00:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654128359
