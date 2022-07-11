Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290421FB7
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657525012;
	h=To:Subject:From:Message-Id:Date;
	bh=xcC0cL35+QR7h6poQbRCEyLVAWBE/JJC+enWKgUUCj0=;
	b=C+cpQ0aS0ek/GgWi/I6tVFXRKKU4kXxUC8n510NTKhnlxcnSD4jcIU3lznKeIOlh
	c1SjBlbM+esgoaz3g2cqqpdO94APaMrE1l96zbvl55FFHwRl/2a5V/WUhhDZZB2FIP+
	x1jIHIKjt6xaSXwUohPHjUcbKzl8oqz9nEqs0T2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657525012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xcC0cL35+QR7h6poQbRCEyLVAWBE/JJC+enWKgUUCj0=;
	b=aEnq4VOAz2FduziozbbMS8kS2J0/cRBgBXqyg3+qlp2+K3RsXhB66Rhm31oSYHh5
	gA3sNXn+O4mmAwb4GNbyxUtU3S3AfNaY7m08Mlmq5S3QQ/Y3gu/IRFdy0dXqW3DO4ul
	RGx0vlk6HdgIbrtG0WClnV3iOziMcFZxu83C8yFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec308753-3c47432f-bf8e-431c-a083-e99aa01a906b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b30e6eaf618a177b5e42a7c9d488a876f0f49f7b02f01c5762f2eeab99686e49
Date: Mon, 11 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657525012
