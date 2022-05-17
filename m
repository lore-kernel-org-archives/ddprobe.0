Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A78BEA9
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 02:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652755919;
	h=To:Subject:From:Message-Id:Date;
	bh=TmzVVWwUz5yv1M8uUTewRc6nH/7yJyJOcnKWNVEmSgI=;
	b=BHPwdzzgk4GfEnf4aYZVrdBDBATEB5vooWGR7nceFSVbDdoJ4YetnQAsL7e1FMxF
	84UFr3N3buVw4vHZc3wiPr+MsqhEDcYKm8s1bFg0kIyF0twjThpaDvZyMiL2gxZpA8u
	MPD3IrdoLyF5CMAxiY5ncbA+7otr4/BZv5pKaLK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652755919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TmzVVWwUz5yv1M8uUTewRc6nH/7yJyJOcnKWNVEmSgI=;
	b=WTyJxrG8tHtDcSPg2clKRFK57SlijXGg2JYrIn6sBfDESMz5ZKaa0wR+8G7WJzSB
	AjZGu7vrN7SYVcE/8saaCgFdTWPHbLVgwlq+EE5e5/O/fh3L1ciaupNvEWEK92PRJer
	9FDWr2esVsyIf/b9PK7m60UG1jWPOKZ8J5DRaPWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cfedf205-bb225473-d874-48d9-a65f-eebd53bb1382-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d279a10b49cbbc0a5ffcab16d9ef954a9f76f7010f2d7aade43e2d1f0cf2d25
Date: Tue, 17 May 2022 02:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652755919
