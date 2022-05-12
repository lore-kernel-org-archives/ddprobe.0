Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA70733FB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 19:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652384639;
	h=To:Subject:From:Message-Id:Date;
	bh=cOupjDa755Lgw0p7CGpIcFLApBnh/Nvs4D/FWsUufTU=;
	b=CLij3Au//KUi84KdeQ2nULS/1I4ZwEka+wrc5ppggayEIVbjhwq6qzX8FUw6HNqC
	Dl8IGWAYyLgBjaJE14someJlAevbOGitOmFej+9ITAptjCSDvZjSqRZX7LGRh064fMb
	SX0fk5LaHJE1SG6q6c+0ZaQ+amsL4WfSqwak/2Fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652384639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cOupjDa755Lgw0p7CGpIcFLApBnh/Nvs4D/FWsUufTU=;
	b=RWJXD65jnCqoy87OvZs0d0JHWMLx88k6Xn6KkXe6Qe+h4vDcoJcdgYzwrFaCqsJk
	9ahkJLGjuJc/CLwExi6YPMGDZEfN/ZIOVpr4mgXZVBOoCV+0maKeqP/kyKghs0bSlju
	u6WeUhq9OyK4M4OvrVHZXe+DZM3gNOr75mmX33jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9cca943-26be276e-1e85-4af0-9f04-628d43e60b97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fac4e60563b357a118c721c3cbf6f4223ecbc36dcd292ed72674427c4ddc2e05
Date: Thu, 12 May 2022 19:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652384639
