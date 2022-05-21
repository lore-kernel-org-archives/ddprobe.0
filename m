Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069322F28
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 14:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653142919;
	h=To:Subject:From:Message-Id:Date;
	bh=lmSPck0sP0HNC9Le6HxJXzFRr2Mazv3drXobcMgK1fs=;
	b=Q59jt+tqz+fAL4Gh3Mz6o0eqNiAadWAkaePYK/sOLAd4m8nNhAwfCgaxAy1MNY4a
	N96DYGdJNdGyEmkyOfRqSx8WwzFUMIzn48Mo9ak5ex/yeGTlq3eNHTUZP3vTYW7omm2
	99sHSjq5xg8ly4JCYaSMgLQm5xHg7hq7l8fRGN54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653142919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lmSPck0sP0HNC9Le6HxJXzFRr2Mazv3drXobcMgK1fs=;
	b=S0K5SjGAY9BUNV6eEzp6iLTuFjHVC7gKUwCFptJB/RSoC/VLyHTZLwj/mlRFWHmj
	deF6w39D4vlqu7ndWUAIHhdVuHyjgBj2Ac3LvTDtDVCasFFMkM+BC2tGFv/axkAllNR
	kQ6d2jyHiRgAQmIMPVOmKSnmaVfch+Cvg4f8O69k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e6ff1846-1b975cba-5d12-4013-8352-5ce7415bd74e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7561068780c6a414d1ec52c01e013ab35f4efa116f832b63b76a47d68c35101c
Date: Sat, 21 May 2022 14:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653142919
