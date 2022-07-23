Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3887E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658605012;
	h=To:Subject:From:Message-Id:Date;
	bh=AIzMjjeQEmdR4xxA9+PkBzJJF/UUOXgEb+7+c82eW4M=;
	b=iAnmdhDLJmtjoWwby3wddodjsCs4+ZBzCWy2lLZcnhDbS+KTKO9qoYITjOIFhZO8
	MCzil2kHZRYVWjmubjfwU2TraWvssjswBmvQFF7m+rZtJpXbn1WLkCXE3AZMNG2cn9r
	mMevDFIxbcDjzxJn5+FuGvypM30Eglcfv5oK9ZeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658605012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AIzMjjeQEmdR4xxA9+PkBzJJF/UUOXgEb+7+c82eW4M=;
	b=huW9qb3Gc1LrDIXViocGOGCp7ks/ott6guxRhl2ti3qdwJZQb1eOy5j8hlE+sJtC
	myCM8H20ur1oxoYumiR1AxXRT+9Wp9Xz3tUNBeNsECF/TEd+4lwRHb6wSxfVjgOUVFA
	RApb3hfjsKyjzeZ6tCaSpw7qbdep8jw1W+xgMslM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c900544-b891e855-2d4c-41cb-8728-5917c7a2b586-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8902110dfce9af5ab027aa736347b6b82f97c3bc66890be68aa06ea4cd6ecb2
Date: Sat, 23 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658605012
