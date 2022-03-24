Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134D523BE
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 22:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648160878;
	h=To:Subject:From:Message-Id:Date;
	bh=dQ77PEsVivvgow+jmOY8juVoKcRBzavdSAxbIsb/+L4=;
	b=cMuo7DYcGLHGAjX1xEYwxX/lTYOkvV7qS3eWKUouJ5qLaT+NoiyI2g6E/5tQK8NS
	NdsYeVhoqQzis/R7i7JFuE23d7kUk3n0+Jdz37rJRbcViQwrTdOdqLpIJd2MPzfyPev
	Or4aiy5vj/4Dxat7YYpgfttN85IgPxQPFcq6k/ZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648160878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQ77PEsVivvgow+jmOY8juVoKcRBzavdSAxbIsb/+L4=;
	b=VjONuZge0vKoj0ZY/g8k/2mfmktnSvVjdpLQ94m2J2wpJ+tPam2JkQUigRWSsNgd
	pGbIZo2DUK46VhIvi/v06r/7ocmFwR1gOTMNDVbci1HO++m5RL2NIHCr8Tmuz3Yp7pk
	In7xlfr5kVFVB9jdIOoF/3Wr5Tyewnje1n7DTOaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe0b2efa-cba51c07-d255-4faf-a9cc-04dda11bd64b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91be4cc3dfd00ab775ff26d2dfaed468257c530594e225d06ebaa5aaac79e905
Date: Thu, 24 Mar 2022 22:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648160878
