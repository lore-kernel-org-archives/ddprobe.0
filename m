Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972FF2F31
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657890412;
	h=To:Subject:From:Message-Id:Date;
	bh=9Rxh+EEetXzw0KZPmwP1F656TIFXoh6HkffuwXrXcA8=;
	b=fna5vPeEjv1KnIuHzp02hn6kq94760Q18PRthOA60FFiOoppeH+BqM+Cf0u1Cb+w
	Cra9pnMpijhYofLVrtlv/dHU6tecIyMXgGcG4jWGQChoXh3LsG7tR0Ttzj7z9W36Q9b
	3tZ0PgQlMWuDic//fGEfCHx3MtOkyTr3rQPKRPPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657890412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Rxh+EEetXzw0KZPmwP1F656TIFXoh6HkffuwXrXcA8=;
	b=c65fuWBNeSbtyq6VKvAGPlGyLl6ueOiAqJ2C8ubGcamt1Yg/q6SloWm4XbIh+L/P
	nq91MvrDOmCALxKM/hpQXVFkVrYohLsxY1+96ht3qZI68NG8MVaJ337J+jWVnj2k+Qi
	TaX38r+2eC68Azvg4tMjgZ2MlzcPsXKczohJAnWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201f816f8-71ec8d17-d612-4ee8-8817-10821fc71070-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e111cc0e0b20bab48333370428a1126b4ac079c0c74706dea918b1c17de1119
Date: Fri, 15 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657890412
