Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62977F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654943039;
	h=To:Subject:From:Message-Id:Date;
	bh=iYcFZPdV/h01O1SESmEqnKjaUP922cxhrnqLtUb23kY=;
	b=F5JiMzGZMjkDTn/06wAUzcy3ULiawoGC5ZhmUmtU+2mYEDBeFh7bkHdFwIQV1kBB
	IHEXk6E08gTK5D0CkvznVGCsNT4AZgswqQNprAV7FLKG3848WQ8SdCDagfuswhGVl1W
	MSMkLiVmThj5XkUjTQk1Lo6/Y2NAAWeBET+WM8YI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654943039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iYcFZPdV/h01O1SESmEqnKjaUP922cxhrnqLtUb23kY=;
	b=WDQLuz4oDgyh7TulVGC9Z5s1hrCRbW3x0vO+S/FVywTOGUJ4pFnWrjCl29Uz5JmD
	3smXfWyqAHs7VvZCJPqu7K3GvdPaq+hI06lnfK2ecPdBolnxg4iojyAh7DEMQXYOdpL
	885LdCOFKNvGOR8AYlnQ+hhLfYMkp2B1n6F1INqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181524abedd-40b93a23-701f-4bb2-93ed-0c2aa05f7a4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e25a9f20151e0a3017c23d285492f2155fc6cd01f76f3638d1288c889099c44
Date: Sat, 11 Jun 2022 10:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654943039
