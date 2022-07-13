Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3F62F28
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657745812;
	h=To:Subject:From:Message-Id:Date;
	bh=vWIfKUXlkwLObyXlEFat+EmxNSKLHbDBvOeHF/2gKok=;
	b=HPbeX36w9DwRSYZ29fv2xDYBMIWHKabiOH0xyWQaEGznU/8ip6FFD8C6tiis0/2d
	b7Ulkl/H1ffGLEGaCZlQpga4pktRvmX3lcb3V1p+1pVh0vXulMVOSwTzXL8nA9uk/an
	7bHjjTda2gUQp9REdL4fzpP4iUULnxg9ZEBznn6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657745812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vWIfKUXlkwLObyXlEFat+EmxNSKLHbDBvOeHF/2gKok=;
	b=KtLmFDbvT/QUA7wbjbzoc5SGmA7y+4okaoFTr9g6FlO8bT9lgg7UoQ12nnW8HmLL
	6uNSMGLenKHDL02Sl3FbTWJbs0FyWHy3tVqfb6OW+Ofy5UPn8KISvelJNMXujwwWx0P
	/pzqMwVyQxqGB1UKYaEQxX/YujJgE+9Nn4Rp3bmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f959ab53-006305ee-1473-4938-b6fd-4e345be598c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1572ea28e9c71e17da1702dbdcc9b9c121209ae08318c25335249dd98e19a5f2
Date: Wed, 13 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657745812
