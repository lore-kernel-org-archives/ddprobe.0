Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F42137C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 17:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654967999;
	h=To:Subject:From:Message-Id:Date;
	bh=nWozZez2VmswDU2BQgOcjm5VhrexoF6ttva6fdFpUBc=;
	b=hzMyiWkg/dEB3q5sIlKT5GhFg+qFLbEJES+Xq3sdWdKTkmrU5zGmg/Tr6tA1xvf8
	aj4HnTYSCb6QSFHqL9PuOsYOQya4JTqcYqzGOBH1hqa99152Krb+5wYYgYbHh4gomMH
	ZRd4bEevzGvqNqMuj6o/23tn6kPytaarARyc3GRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654967999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nWozZez2VmswDU2BQgOcjm5VhrexoF6ttva6fdFpUBc=;
	b=bnG4KZyl+AelzQ2Qiba8dai7myeCYT2GwtaOUOZ9v4V3tXu4tZ7GZs5GTs7dvlXg
	NZFymG6TJMhtAcqGE45Xehd8F7ifQDGCifbxehdSBkhwk1aRhmkyGyGVF29vyyR/oCb
	sHoIeHpc5nTBN59sHuYcsZ2dDgrNdvBJYwjj+j9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153c79ae3-8d95519e-8a25-4cae-bcb0-dfbdcebdab4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9ab3e3b00959c697bc0e754cdbb424fecc59640c39f68f4b8138582b166c048
Date: Sat, 11 Jun 2022 17:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654967999
