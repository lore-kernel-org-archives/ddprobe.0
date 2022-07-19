Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0DD10E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658223412;
	h=To:Subject:From:Message-Id:Date;
	bh=HRLWbP8fzglFVYTLmcQcxUPDF3s1hmgT33AT36hm344=;
	b=aUHEI7FhqUd/TdRQxTCJ7XILNSsF0w5Mox7++myKjWWoZZhfcDX67d3xfsjPzS/s
	c5bzfzWTEpCmv1MmtEe+iWn3O4XKsBMfnJQXOSjdovdj1E9WR+f8gZtZWcJZIjCJJzg
	d4GJ5zqNYBR0OBkpuzhm0uux2Lev0l/EyiIyNahQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658223412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRLWbP8fzglFVYTLmcQcxUPDF3s1hmgT33AT36hm344=;
	b=VTGEJK/HjWvSUlu+Y4dO/IyxEp5NDxfYdBYx8kF5We0/WPiGNsEkbB8C9OLESj6Y
	KTLh6Hc9S8yXiP3mWhXf4pokJMLiq6ItgqMJSSQk43Nv2ZM4F/H9WI8E2mYjuP5yhQU
	CK7eZGwAuhJK+E0kI/ANnoHmb5S4Huo55nFpKM4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018215d1443c-c5badbc8-6784-4de8-a408-a50e8ae38c07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6df7b33d3ee16329afc7e6537fb335ab54f19dc567f5b9ae8ef70cc9d7d7bf6
Date: Tue, 19 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658223412
