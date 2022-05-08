Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E6510F8
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 20:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652043538;
	h=To:Subject:From:Message-Id:Date;
	bh=oGAUUG9ttopGMFoq66nPDWdtE8nO9aV2G5RMVw+hJcg=;
	b=bnKqs/yx09UAlhZXxiSmuR1haZtY58PYFZbjxUsTCxcMu57uT7krwle2n8yPpobk
	V+q6CTpvQVz0ymRDj12nNI8V+k53CdpZXBit2K+ctc6+wzIvZ49xbE1e/JwUq2OC817
	3kx0bPq746jFjWhqWTg1AydS8byncszqAoiyUdgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652043538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oGAUUG9ttopGMFoq66nPDWdtE8nO9aV2G5RMVw+hJcg=;
	b=MKdgof/Rv48az9ujc6JIb2cNRH1xAFleo4ZGSh6pbbOo6wEFl89v+JXZRHI4s6AV
	vOvvCHSdfcgG/epwa8lB/wHV0JJ5HGq+0AVt1Lh6/glClRpmKXQExBJcqwpZMgd9x3b
	o0YtRGnIdxojpMDJE6pF6HP9wsy7sXS59coCyrNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a577dfa3-4ddc4428-d3ec-48bf-9477-81c6acafc974-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97b94bab4fad9c0f480494b0f310e48c351845c01c9fac5b9835ac6d3d7e39fb
Date: Sun, 8 May 2022 20:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652043538
