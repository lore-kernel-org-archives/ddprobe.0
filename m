Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFF25CA3
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660896052;
	h=To:Subject:From:Message-Id:Date;
	bh=To4XI/4UaK+4649nqF+rTfRH09bCiKIgWWe8uPrfhyE=;
	b=VgXsFUPkn0UhcvBPppNyVnbdNmCKCfL+0N7PK1VF9lG06CaPf0iWfpN8cMM5xd6S
	yjB+61rsyTsBACBsy3+MK6puVaJ3knLAQlVoW6xEB2oqIlGbNxj0+g8sLFPjdLSXtsY
	kgYFLKu5GrD/IrgDiggj7cQ6PhCzr5BsMz6JIAUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660896052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=To4XI/4UaK+4649nqF+rTfRH09bCiKIgWWe8uPrfhyE=;
	b=L4KOzR+Sa8Bmz0lSvTdJHZuFp+yvgrexWHCavUC78nVdSOruJexq4lPxo++Juf3P
	NyRVEfx1xdruFGN8VCauO5sWGM2EMVoDM5OOWoHohJMIMdk7my63eb9fNgZ/Wvjapsg
	t/JhzxvhJiiLrvjhAB4D3qV1yEUnmZeqSQmoHzGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b51e8544-e5a74687-2b76-4285-a3d3-5b69207ddda3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28b4d97f3b88759521b27e97034ece2282f709812488d01c89e8e8138afc5df6
Date: Fri, 19 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660896052
