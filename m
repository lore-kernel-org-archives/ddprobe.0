Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A096ADD
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660764652;
	h=To:Subject:From:Message-Id:Date;
	bh=euVZ1gocofeaYJ36TUxh4opa9D6rftlaa3FhiPzP3i8=;
	b=bBdnItlv/C6TvDz5vMvB6Shefh4jtHyqbQQO+4+T/sL9XoYoive/T/EqcFqN4LK+
	P4NdZFTiknUxpFHjncINLoxw+3azzaJDClG/VrPAMqoPkzYS09r2AQoY5t0LoepCDlO
	7k8k/Qj5wNKneR9qgFnsSM+5jFymPbLGxIYv0544=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660764652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=euVZ1gocofeaYJ36TUxh4opa9D6rftlaa3FhiPzP3i8=;
	b=LlihkDSNKQ7pgE7wv2Gki9TEh76AnTa80SkmNk5JXrTxBB3Yw/lZxOXHxBpqrTcy
	3WY7NwgbcWUJWBVJGTvlpfI6CzyVhb0MTCDssXLUqz10cN3xIdCTxX2izduwICFRwi7
	Ylo75CpGOmqIOWuqbBD+1l+Rw4T33lwThfttR8Ho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad498408-05d195cf-6319-4702-9488-a8aee8523847-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1c374bf2097983e7fc3eb944ba374464ebe22cdf9c2e6d9c756a65935a17733
Date: Wed, 17 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660764652
