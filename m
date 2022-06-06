Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E171854
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 00:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654475519;
	h=To:Subject:From:Message-Id:Date;
	bh=axvex0fBVKU/7rMTjE3hpm6KQzZo3pyqGAKh9HS69pc=;
	b=f0+g3pwYXyR01iUZFKHfKOZewT0l3/ijuFAE9t7HBUfqXWfK+11yc7DF06RW8WHZ
	pzQQWatVTq+LeCirjMzkxzVZAOUUmI5PsWVOUafK73QCTXoDdJB2ekIqITq0D517k/r
	x4rbtWWo+tEL+95ybPXS4cY8tFMvQNkTykvT3Vh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654475519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=axvex0fBVKU/7rMTjE3hpm6KQzZo3pyqGAKh9HS69pc=;
	b=SsLnY9+Pori4FS7FlkIEhRdYfDIyF6S9hbyjC0WPc01pczkJ6g0PmtXl7P4aNWbO
	Thihc6SIrPcuxnxASMknJwFesYpFHmYvXOBIyH2tVwLiNuLvQBw77AH561BGMmdHGgU
	lv/Rq8FEscd8SWSNAcyc4VR0XV7rl3mP14AnrjWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181366cf546-30d939ca-2438-4179-94a3-2089a4050356-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f0352ef0d04fd9375391781d06343e54870cc4fc0f5ad0abed8c3c53d2fd4fe
Date: Mon, 6 Jun 2022 00:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654475519
