Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EE046B6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 08:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654504859;
	h=To:Subject:From:Message-Id:Date;
	bh=mhNYEd6L8wWQQv2Vg2OIyoq/S2RgCvhaaulTyI72jlo=;
	b=Uptc3r5w7O3ZTMjWncnsSX/ptux9m/hv5LnLp+6rCqrxz7v5zVstqgsNDR+Cc+R0
	g87eGibmXA0sZaGURBHRVsWBpdUYg/Gynfb4Yzj1zjx+p7ulF+k0t7LG7OVB/TJ+/0b
	cv1Fakwa7d0E4o46NzmYu+I7n+3OqZENWBxNIVi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654504859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mhNYEd6L8wWQQv2Vg2OIyoq/S2RgCvhaaulTyI72jlo=;
	b=kQlg6TqfIrKQFqIvxq6haYKeaEa1pX3FDemgs6x/Z7W0PG/BjWWOY7ABpiZPIfaU
	odbU0lc7rFFQWoqDqR16VRbH3SlVeG6BJt2vOQgt6J4CXP9s9xPhAjz4ohmlNJBHqRO
	3M75slBFdmaj9FPA+dnkcSLw1UqssATliUoppPuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181382ca668-021e46e8-7b65-47e8-b4b1-75275026fb3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 372746ba8b427a43c8d3374a1b83a59f9373884369dc8c7294f7195cdae8990f
Date: Mon, 6 Jun 2022 08:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654504859
