Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D03600D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657826213;
	h=To:Subject:From:Message-Id:Date;
	bh=OChWyOwwoFq6NH0kB2Y+3NFJHt3T4Ibq43dQvryaFl0=;
	b=K5U5hkPVq+afzBGJwi1OmLeksjOOVYKNVkl5oDAM39wKZ1NIxlrNwia8WgMw13XZ
	gtfmUr6XchoryPC37uint3TvfRqc0hRJ6DSbp4cA/x3RhRrdQZ33AquEtz5fiB0YQyb
	wtiefuHnr6C6rAAc5bHhCQZL9IqK38YioAbcl13M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657826213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OChWyOwwoFq6NH0kB2Y+3NFJHt3T4Ibq43dQvryaFl0=;
	b=Z7LXF/hTMO0vyI5XXfDPwRsDHP6chzjCfkQCjXBltDBZbO7El7hSy+ccKal0z9pC
	YgBe7O8CL3O8rf7W6xIkq4SsfFB6gI06huCOTadNKjrSJufr+mMmPVg6dCfznC3GsOV
	k7lSMTpN1Bzlo2+m8EUfPsNMcinG/Q4NTUF/2wHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe247a17-625b9980-424b-4f65-bd88-2c3656ca7d5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c63e26899f75214c61f61d24733eb57d6e089c55d06708b410f543a1a4157caf
Date: Thu, 14 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657826212
