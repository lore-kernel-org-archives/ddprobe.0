Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749B6361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647205584;
	h=To:Subject:From:Message-Id:Date;
	bh=g8y+1Vgz/qdjF4kqviFRYHuZ+u4m90PIMsk6glstS70=;
	b=dntVmaqGLbQq7+epTvyfla2rwb6QOzt+i70xxgVEAucJu4HlYheArxd/aL3+nrPA
	5oRmaSqmtvpahEydWwViJgdfutgbcsTZxmQj87BIdg5WSuO9+5tSdVIRoc9h0ZGNm7t
	3Z7TEnBADX1nrFZ3SqkxZjnsQn6HHs34r2ZOzvKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647205584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8y+1Vgz/qdjF4kqviFRYHuZ+u4m90PIMsk6glstS70=;
	b=GKpE3gddEtCPKQp3rdMeW4/AK1Xf6hS04Mi1zdrOGgnvZo2q+9rERRmiMyIgCA9T
	8d5AAnYmDiH3p99Yl8gJducjn2O4OyrO44OWdfzeTUTW5XOcEVrROnm4pgp8jZiHTuO
	WOcbzXPmF8AfmIgWzIclZgQ6PukrRjYMVnQ50d74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f851a8f99-6087f572-c0fd-4ff7-b047-b4478e15dd18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ef1b5403697543a1541de96ad8276d69e83f3c9d167e3e7fbb92363b0680ecf
Date: Sun, 13 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647205584
