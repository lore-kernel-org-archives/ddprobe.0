Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72757A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 10:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655030820;
	h=To:Subject:From:Message-Id:Date;
	bh=0rpS6Gfab+qptW1ng848uAG4lwXMVfxXSBZkkwT2UD0=;
	b=QlfRtGZrdMyg8V6Ll7OwrBt3ANn3nim0dS6H7dObyHzINMwHVjgiKggQsW71zgvf
	GRIqX3QYVhKLkyUUqOHfoIHulQ7F68OLDa6Fj6mDxgZpz+aPIC087FYXJwMDGTJZmPi
	ysl57iQTKiXIfEEdFgTV8cWVYMeCMrLVvIZTBUFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655030820;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0rpS6Gfab+qptW1ng848uAG4lwXMVfxXSBZkkwT2UD0=;
	b=bFxKtUJn3QvT0dQjAwr5wTjx+1qaTqxQuiOM5gjn89hOEYzEkIM/GpV8StBiJ4vI
	V1kzyIqMyJ9untrkgWtw/JgnOSe5Gvk5j0qt+o4B75jdLvgwAYB5OG9Iiq78KyOjD74
	1xTpsiVS+tqhPCpqCK2issd1/BIZpff1ksDUrVno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157862a00-42b1c79e-346f-4198-b8c3-e578e25aed3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 558f24553709a3f53470cbf6ab23c20888a9027c476022acc83ef271841e54d5
Date: Sun, 12 Jun 2022 10:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655030819
