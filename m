Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1357653A7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658268412;
	h=To:Subject:From:Message-Id:Date;
	bh=If5PP7BPcQnNdDHbKllzMNQ1c1epOarI60DMs8xjG4Y=;
	b=GR5UvyyYK9lXtfFcKsivaCuOPB34K0LN2UAojTCSoANbwnYwZezWdF/raAhZp/T/
	60HNrdVux1yqFF6RS3PVToCibSZq2bObqp0U7+9gVzEFEnPgDYj8TDGEaE8VbsrQ4Gd
	QCGGrzyBPDLoU4G9jZ0HsycuKvKE4sK/MxuNOuaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658268412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=If5PP7BPcQnNdDHbKllzMNQ1c1epOarI60DMs8xjG4Y=;
	b=az2ThgEnAyrdA+1j5KvRHNj3C/K2QT/fWxKQkiN1RKWfNRNdQvM9c27q12f2yccZ
	/6SsquqFm6a0n1lZ9XDN+YqW9Uz3c8G0YCeeb+WjNQJveHTSc5LrG8Rfk/Hc3mWGYha
	w20vYekVxCn79do/W2QkralRYJYUGsdsmeHvJDD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182187fe991-8bcb9b56-d6a7-4d4a-a370-e937acf2b8be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90570b76359c89bddc0b31799f8eeb533e6f29d1e2548c17ff8079252f8c003b
Date: Tue, 19 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658268412
