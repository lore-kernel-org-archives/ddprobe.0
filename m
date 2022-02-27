Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2FA7C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645941385;
	h=To:Subject:From:Message-Id:Date;
	bh=nQDZBHteN5Bw7L/MitK5RlZgCMf11O5k7fEA5LGBalA=;
	b=F1sU+iDef6mGwVcyTEZAfKSn7SNSXCev6b8rJD5WgmVhInOoUJnF/FpLAzu+oXy5
	xlfpgYeHiYm6wOE4ZL8Faq34/l2ZSLGwRWeNGgb16qrmfy6lsGa7HSZcJ7EZgEYeyrG
	BhmVfRJKAt2NZOiMRRI1eA+nWvbONxNo/1uB06+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645941385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nQDZBHteN5Bw7L/MitK5RlZgCMf11O5k7fEA5LGBalA=;
	b=i4Upeh6rHGO5UyGOBilf9G4xJsT/jck1bxUdTYqtY3F3XdxVUkro9gtpW4Sgane+
	+p29/rQzzgzoeTd4HVp3Bi5i6BpmUF9gyyweiER0CElR8UbUvuzROowdZ+avsCLBMXB
	omFhw3xJA2t1VmUv/ODFL/4eTrqfKaN4kVdswGXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39c06677-39d9c782-abab-4284-92fe-a871a7bb4820-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d89fdf987a250b4caba1c40d40f1eb93e47527118cedfdfd8dfc7834baf276f
Date: Sun, 27 Feb 2022 05:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645941384
