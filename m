Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3730C17C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660102252;
	h=To:Subject:From:Message-Id:Date;
	bh=qQ8vwGK8b7IUJbQRhZ29NM2HVvH1Rx/f0Ge9gxjv1Rs=;
	b=BPN9YRjaOk0YzS/JtEDj5MYBDSaLIJjmgoVPqrCeWnGxO43/Mu3sGrb0kj6jClP0
	DXEHHVS8i5hlYI/XcxfMZorUgHPvQ1tpnpXXeuqAWZxDmKPrqhPKPIJU24d6iaGXL7P
	GPANlLhe02IU36vufvRUukkNsJjzh0h3AI/t2YnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660102252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQ8vwGK8b7IUJbQRhZ29NM2HVvH1Rx/f0Ge9gxjv1Rs=;
	b=bsAJmMRID5woEp+d4GCNM3Q+xx10VLQOQ6amWTsjIj3Z55Dt1CqBuH0B5pL3mPjY
	oDXYpUhfVK2UnKQOSi8Zz7QrOuD55m52CD7sGWnbkuSrfPcFjIN2mplWNIBptVwKjze
	3EA8NXyxXLNYSozLKC6QBYVjWwdi/18tMELaEmQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285ce17f4-731e5fc8-67bf-457e-a7fe-4e70e79b9b93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33c6d2defe5c3a7beda8d8c90fb43f1747ac061085e0afd5c19714c1c48a4f36
Date: Wed, 10 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660102252
