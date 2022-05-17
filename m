Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238671854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 18:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652810399;
	h=To:Subject:From:Message-Id:Date;
	bh=uW9fSqHbNnr6cpFx0jyLw1uTMI5e+0HNS1/aoAUp1/U=;
	b=beyA25sLUSf/C+DNHNx0PioSH53n2qVyc/T4G5dVBCIZEYmdTlVHNz0v6gF8c2DC
	lxXuTanmdszwi3Kp5+Hq0YNU950OduCbtCW6NTPmHv/ZkkoXT1V44Ii0dzHjynl9LTE
	M74gHU3QnbYIegtjQgHDM7zLDkPeVm6ue2UrT604=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652810399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uW9fSqHbNnr6cpFx0jyLw1uTMI5e+0HNS1/aoAUp1/U=;
	b=H0IQQmaA5GTKV1A0iSFdFZUzubyEzp2oIMe1K3doeQ0DRNatPObPy3huxPneC9+Q
	k2mIx7Ms/eov0tbFTzHAXqjKVW7MSiEKyMK266WoG3SHUhuENNoHOCmNLNEPxiDeFjc
	JYFVRtlrdIGvmkEADkJrm4/x8PS1RA+3QifATUYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d32d3e26-30977633-e8bb-4d7a-bba3-e90cce5c2a8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1b3c0439435459ee69cfa9a46af8d6e21ae1956d037972458c0073270569410
Date: Tue, 17 May 2022 17:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652810399
