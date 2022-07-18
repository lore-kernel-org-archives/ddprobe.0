Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2D633CC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658165812;
	h=To:Subject:From:Message-Id:Date;
	bh=UZYZeZ0E6Ll5dbK/JGpqHVU4v6ixuXJM6w925LYp9ao=;
	b=XVTLGyEK3F0FqL3mw4it50wDuVhi6b0A/gdLEUtxAJvKd4oJFTt9ODFh6x/Unu4k
	fWzBLU4dE4q4+5Keg87+wG21Rng0dqELslWDMWTxNR5/cmp5wUKNTPLWD0UqTQwTNIW
	jzYCMYzNPJjUNa5tKqwZdDnB5lZ0HlXHAOTmjazs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658165812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZYZeZ0E6Ll5dbK/JGpqHVU4v6ixuXJM6w925LYp9ao=;
	b=W/H7Ni2ld1E/zfd3P4+PcheJTIg71hhjhN5iQvFxMJNY8ZH6+UkVLa/yh3h18mOB
	NPNxCIXa3o2CofMazQVcT/okEQsIeUJvkcmyo/AvsXdApQnyk/6beyzsYPEPEdbtX87
	/QSgBcsPfgDSOciEt4Uz/4iEoIQPX5/X55Diu+tA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212625c6c-28ca944b-6a77-4f59-8c31-7656e7e3fff9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83d31ab1bc658e2a1837270e72cad9fc28171f0edac6d086e939fb7f0032b238
Date: Mon, 18 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658165812
