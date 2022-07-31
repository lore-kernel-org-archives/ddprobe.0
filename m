Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CFC3C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659280252;
	h=To:Subject:From:Message-Id:Date;
	bh=9mkcivJPkrRU6txls92I1D4C+C3XbCGTupQBJZpOi3A=;
	b=H2ttgRhgumTrvxFCtxnd0NdTvrYjj2coVy6MXID2rVMXRl58Tt28aamF7gyOOq66
	k98Rq3VHUvlTLxHxGKWYINLcyFpQIgGjxUcEDIt59wEiz2jnBU6HM2/BDR0jYuKiaLT
	ez1SKdJUwpH0i7W6ZO1ervSDifcev4zi9JliXM6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659280252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9mkcivJPkrRU6txls92I1D4C+C3XbCGTupQBJZpOi3A=;
	b=hJDoVL5wuq3mHKChP0Gu5VFhjQ3keTS4rBV4tmkyTZXNv81bJHgtIzgSupqzgYVZ
	LzStYpjREftFFuH95l0JnLegGMuh4vkTjbDScOI4xNulTIfzG9Dska5l/tmvXm7lbzT
	5iZvC9z89eROBs8j9tQ0EDtbd1V3Ptr/43rPMbqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254cf5e93-d4d6702b-dd0d-4110-b369-9753d01bc01c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb7d00f5dc268098bd40f6e027b13edfe6e4372df99ccc518c4374fdde195771
Date: Sun, 31 Jul 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659280252
