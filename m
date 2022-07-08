Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FB9635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657248412;
	h=To:Subject:From:Message-Id:Date;
	bh=M3So60nHOcGVVUrEvvPWHQ30q23CrGz8MZgZT5efY0U=;
	b=J5nppGxGb1iFpy/M50BPuayQmPJqN250p3S5hTLNCOAh0nrcSWgG7GoXtbbG9tZW
	UU9mh3Ct7MkjK4F1b/nwMLXIsVUH3aZo6LSQkA7Zs8AupIOJ4bSEqdf765L0WMMS60c
	CWDPGm5szWk9/czMCYKXMLF5cJUyvcEGiM6M5mjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657248412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M3So60nHOcGVVUrEvvPWHQ30q23CrGz8MZgZT5efY0U=;
	b=ZIGqDQRZWx2uZ9KAG3/ZjY+5L7dEKY1OHhCLBetUFaqj+enE6lYfa0eaWNkHGCYn
	5hovbwt0m7Yz1Ne/Af1qTrtQVd8Ay6U+x0xurJExHOVJKuKnLbfShsgWSAa02r5m0dC
	yIuLSjMBVZZAdc7Md+ce2htrqmiWgYZvFbQ5sdHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbb3f27e-fb67ddb9-2414-45e3-bca4-3d7b6dd625bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4fb182cc10a128cf498f32bfc41ae421a47b6eda9295af15534726e5551c56e
Date: Fri, 8 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657248412
