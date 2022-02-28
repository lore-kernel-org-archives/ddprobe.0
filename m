Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0272148CD
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646041585;
	h=To:Subject:From:Message-Id:Date;
	bh=0Exy4p/Vywcb6NCLyTFG5oYpGv17vb4bYcvJRPEJU5o=;
	b=dvBCUabsHEQVToy/XQ/rpW7DqJPE0J/sc2iHykowROrwWwjdHUKanj9FxySbsHih
	JFyrlcM4YVkI3Ip1OqHO+ajj3p6MUv9NT8XO3eeEOsPKL5TcnmGcRKQDydnCiidoKNT
	wyPlVMiLpddCjXU1BtMeMuOFm5f+Ar+NX0dXjKks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646041585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Exy4p/Vywcb6NCLyTFG5oYpGv17vb4bYcvJRPEJU5o=;
	b=ZCbPI0C6IyoexCf1F8T7ApCy4vTaHFhGgcJcoS0n40O257TAYswtVpFI0Cu+E94V
	HNCfOSn0kC1wcc2nXVnZsNHft2OqeV4jFxf2fNOABeAHISz53JfzTNIZK01eNQQfwyC
	70Nnvd21MKRc/IBR6h0lkc7bbVWW36lP9pArLeB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fb95470-a14cd594-0c05-4144-903f-bee330e707c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 037668a4f39be3628e70239445e1afbf61763a223f27c73f3c1f79300c8ef131
Date: Mon, 28 Feb 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646041584
