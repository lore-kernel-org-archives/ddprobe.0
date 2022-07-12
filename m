Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D37B23A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657603612;
	h=To:Subject:From:Message-Id:Date;
	bh=8FBehOC2Vd+EFq+p5+j93Rm4bTYExnLYM8HaorIqMTk=;
	b=Y+dzgU03KiFxHJJ+anpTdwwyJ6iY6RqxJ55NA+cbccs5Mck6P5MWa+ZtoEusOsga
	ZnzG60tUlEYx3u/Bcu46NGkeWKqnngkxHsJfHtpZxYHPLL0SWLRl2um4rQmF5C/+eJP
	LecD55wBkKMDcqj+ykKa2jRm2zqJHXfUskz5OMdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657603612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8FBehOC2Vd+EFq+p5+j93Rm4bTYExnLYM8HaorIqMTk=;
	b=MJzUm5JXHn7vdrXXvvJJz+Cjhx2VfQGfefSxTSGBdDXcu/H3F0mNlJzwbwZZh1Je
	YPiDS+zzkRGQiQjM9kt23xcU2AW82Cxx3/nKKUnVXvEJDMXSojLT1otPM04xfKmYNR4
	kU0j5X01EgVJ7uZLAO5pl2I4iQqjyrWU8cH+6lgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0dfdeba-e10999d5-3632-4a32-8a1d-d43d11a4a750-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c88cbd84f56d1591f1e89535862610265a86a3beae81e0440cff12f6aa57ac3
Date: Tue, 12 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657603612
