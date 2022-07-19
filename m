Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1236210E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658197612;
	h=To:Subject:From:Message-Id:Date;
	bh=NNU1+f4/n1E9ooR7N3aPCxob6qGujYSLmOk5jSkQLDk=;
	b=DuZYnr6j8NvaVJDxjZ/W2PkZqaIm25rMn0NTuXYZWGha9mO+mVuhhNLNl8f6YtI8
	X9+0cB3JemYKwuCD8yiV2UK6hLSMclVDXvk+/2syxukqA0yotLP1IC38s7FDGTErkXj
	AqO7ZXOg8h+Yb65ITmpCEhQZ3thDg+HhRpYSQ9lE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658197612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NNU1+f4/n1E9ooR7N3aPCxob6qGujYSLmOk5jSkQLDk=;
	b=GbGjK1Tj0AjhqmM8gzXZTp3UhvVTcUkbut5/WsB4QtCHf1tJY4J/QrrV9JUQFcj9
	FCaPfzQAQ7dcox7FZGQ8SLquJkD+gEq25fYgVhJwBKOVDDNKeDiSsEHMLwiqJOBOcnt
	i/k5YMGzM3Sef6oLpz0bISjxQOLgdKQSYcSATfy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182144796f5-24b24a2f-5761-4114-abd5-92fb92ccadd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6b1ec3d1226ea185367cc461b03a6169ea34130bd25dd7a865fe7bbd259c27b
Date: Tue, 19 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658197612
