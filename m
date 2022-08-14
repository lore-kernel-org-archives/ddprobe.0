Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD90AEA2
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660510853;
	h=To:Subject:From:Message-Id:Date;
	bh=ZBRGMDLpOkL7VrvmvQURPjMYOeRzQAcwR2gstkdQ6hE=;
	b=BwXcywzuvwOo6DVq1PRu291RsVHnp5k4ClR85YQyu0P934GScvADHl8pZtEHvZDW
	Y/jsWfNrYKw1OCE45Yir8gKKeXUxj8bYdg/S1i+fEW7gZg6aNnBTxFR9zThoiGhN4Ha
	353gv3Z042eSHXMVUfRSQGrNUVvQgF1ciT6/8vnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660510853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZBRGMDLpOkL7VrvmvQURPjMYOeRzQAcwR2gstkdQ6hE=;
	b=BfYgrNh45tqcVTt07js32RG1fzCeBuHaaWIbpWqh4tJ84yUznopHxaGfCDrsSHc2
	52eHKJyjavxBDp+SwMr0mE8onl4n3JueGaSXwWaQcURMFUUv1R3SbdvnFVLB+Uafgsu
	WGk9zeYuU57sQpcnDQ4vhvJt2yG83ozTfVV7coZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e28d5eb-d5286384-e2d6-46c1-b95e-252831500e3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a56e6d70d74bc182e598562eec0f2ddecb586e69b819f9b9d3a7eaadd8df00d8
Date: Sun, 14 Aug 2022 21:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660510852
