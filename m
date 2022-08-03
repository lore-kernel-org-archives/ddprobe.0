Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC049368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659511853;
	h=To:Subject:From:Message-Id:Date;
	bh=XYnd4YxtZ7aPM5/Xypx62UDVy6FopS1+aON6oCZgzrU=;
	b=gXw7Aq5aeTVGDhSltznap/eM7K8vtvgL8AVyPRK7Uracaz0Tn30FWHp3OG/K12Gf
	MNru5A94pSDqcYCQRCOPLW5ifl7IbZQMFuPruZoIx8GyeXSHVVE8b5UzyDF60symG0a
	CpyYNu8qYcvl6YBvPbtme+fOdaOsj27P/04VEdcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659511853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XYnd4YxtZ7aPM5/Xypx62UDVy6FopS1+aON6oCZgzrU=;
	b=bAXjOouS2sZ/7XK/m3tt2U9P12oRv4M5YxcsuV4e8IlPvGNE0n3OWRmONZMDlP8/
	bN71/vnHPptnoujdj/bWhSGPYlXEivAKIA3MymZREI1QCsmngh7RYroVI8ojcUtFTbx
	e8tADvU/wXN1VvkkJ/zoy8x5kRgCJCR4pPZULu/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182629d4dff-d9b72cd2-4a3e-4b1f-be87-252d5cb18b32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd75af0bb010d341e781f1ee7f9a616dceeb796d66cffed7db5e9b395b3f21b0
Date: Wed, 3 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659511852
