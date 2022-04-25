Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED1B7A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 09:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650880798;
	h=To:Subject:From:Message-Id:Date;
	bh=CFeIJ3ZJADq069zsIbjqCFj2Lwt78d0Id/LbDqSSI+M=;
	b=NXYG8C3SBiqqV97s1wEy+zXreeRjflXGR9zBeE2xYWlVfisRHmgJzitnjt7hUpoM
	dEgqYTh1lTm6uvhVde1VAmipkfmnflcO54fld4S1vZQL5/RC0BkAMrf3qV+cGVbQ8Ot
	KBzV0PmKxr/TaIero9vViKxp+wpy4uvSKjwcyJu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650880798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CFeIJ3ZJADq069zsIbjqCFj2Lwt78d0Id/LbDqSSI+M=;
	b=KqbcV/X9Nn0pHpuPwJZvcrZkeK0VuzZVMPHr1PWiO8XnQnwRZ2JGv8iwUL6Y8S60
	Htr4N5umTCgUny5gUjiOmP2JlHGDVud1ah/nJq1n0er6ETRVANcM8nC8EJxR3RIbkU5
	ejSwsQJM1RWwW668h5BRWnmt9XKhy7nRVMi58qZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806029de43-7d98524e-a2b2-42cf-b22a-ab0f720e4365-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f394a3791f823d9f7e25adc23fa140dfa38487f8e7a372c392dc6b0af08516d
Date: Mon, 25 Apr 2022 09:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650880798
