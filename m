Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2F43D7B
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 21:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651872058;
	h=To:Subject:From:Message-Id:Date;
	bh=BYKS+HTrkmVFAi3luvvuQPQJiCV2UBMGu5bjKWtQ6XQ=;
	b=aKzyUW4LjtQPqb1YmLuHlujue+qpt/SGErSWQofddsW66ha+fVsYv9Zoncqn0bDq
	l9E2HurFThwLirrJwNTk9blBqva3V4Fv5dNk3mzcAxJBviJqBqUu3cFsOsB76Kv/Cuz
	BLE9ZrdG/lQfSy4AH2HYuiazZ02/ohJd+/h1RXSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651872058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BYKS+HTrkmVFAi3luvvuQPQJiCV2UBMGu5bjKWtQ6XQ=;
	b=Hq3XcwZH51FN5HlNbz8yes3HXwJnGhPBfx5vRdRLnVH+IAyvPRNDEd07BkF5ono8
	gg2mmrp/3OHN5UvoPyAuKP/kPLL/sY1pVhflpULrLGsa0gr9JnZvdXSi+W7fGzJy1EO
	1W7LH8pTjcqCHYHFnARpfZSli+9nfXPe7e3wtWR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809b3f4bd9-a3bc607c-5fbe-4991-ab9d-cfa2ac09c19d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 720e512b99027fad786d01bb83ad220b84acc91b257c4ed9867180707fd58eb4
Date: Fri, 6 May 2022 21:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651872058
