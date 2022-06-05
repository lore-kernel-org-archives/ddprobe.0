Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF1B7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 06:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654410419;
	h=To:Subject:From:Message-Id:Date;
	bh=q+Orq6MuSjV71q1gsOgKUgsyWBFXcoGGudwtvM+h6LM=;
	b=JXSasr5oW75y3UqwjWF4arnMY1ZCdA8GAhtAs+jMFj+3dzaj9pEIlTnuiUiqV998
	BA1fzLPQ2SGVUCJ1XMO9mnk0RMoypP91ykTiOY7XAruSr986x7UshIpAPQYxGRcH+SK
	5HJwNewF2P45zjNN2b9+JpGmfvvO7zCp/8mjsfps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654410419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q+Orq6MuSjV71q1gsOgKUgsyWBFXcoGGudwtvM+h6LM=;
	b=E6jWaT73oiycTUvmL05226LdzrNYi89+fjPQ0qZ7Vu7AiJaikZdbDzV7HLGCKV5l
	kK3Wl9Tn/HRDYyau3b7gayXF7Ch5CHOFnl/7FkfEPqfoU3pG4x+40E5VoGWDrajbXrF
	j02szAg6AEXyhZ7jdj5YnzvWVxhvm24Cgo+Z65aU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181328b9c1d-1cb7dd59-955a-40e6-aa6d-e37933f09e3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a91ec396cac21c7f3fc5e9cca90062ac90a57f93b8c3f79d24aa3b2ce52d2df8
Date: Sun, 5 Jun 2022 06:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654410419
