Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5BF7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656496612;
	h=To:Subject:From:Message-Id:Date;
	bh=GqcLB2w4Pa1+6jPsaywApb8/UqAz4uBlci+kYBsd0Ds=;
	b=gSmJMshO43JahXGwaEY+MbjpDkysAMu+fYTE1AomFp29wu016MfeDf+iAAKBcP36
	cFCPPisPeUsDdTH2sN8+s36iaGV7Q4oXqdeZzbBOpSt/vZ8N1yDL+OcJ4GSjftlqQCh
	F9poNjYNDIMu1oqkgoLk/zaZSsNg0ub8RLk3LOUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656496612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GqcLB2w4Pa1+6jPsaywApb8/UqAz4uBlci+kYBsd0Ds=;
	b=ep8J5gtVd3zaeLiQy6PqImHyYlWbf+UT9UpvpN2eY35em2EqglO8mZ/04BUXiGai
	2sFnZuo5nhEqabAJrY2Eu8qFK28TH71aT35h/0Vo3dJ7npevXwYj8EgnOc8uGybGm4d
	Ocp1geV/k9i6tlDxygIqBEbIki2ZRPiIieiIbwlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aee4639e-e6ec65b8-fd3e-44e1-9f60-57bf8ce4f408-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cb4c571e5dbac5a8374fe18dfea19998f058742db205b66f334af26d978b18b
Date: Wed, 29 Jun 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656496612
