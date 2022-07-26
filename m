Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105BC7E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658821012;
	h=To:Subject:From:Message-Id:Date;
	bh=QrOnF8pr+sc2S8kfZzSdXlpeSiE6AS0vKam9V2TzOxU=;
	b=BEl5sjZ5E/RUZDrbDpgh7Zo4tTfO0ulgYKAvHRrybzMpGOmZU5tQVi7WWcRzBiK3
	8p+xQKQ8iciJ29P52MZpArJf61yonMzE8ABb7OfFZSl67l4OwXZUr3pJpjJzsFNsQjn
	7z652X3ESGQdrzf+PrkxrS4Qu6iq4bEwoHnOlPsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658821012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QrOnF8pr+sc2S8kfZzSdXlpeSiE6AS0vKam9V2TzOxU=;
	b=Ct+upr5hhRWlhntQBPtmMBrsMsDtaCmlfNeAOm63qaI21ySIenribmK3kq3HIO70
	rXlBE4XWLvurYh7i0bdOMdsY2sybqdUbFr/HUtKQu29Zig+No2+3p0h2LkaAvEWOQL3
	pUsWFDVYUDW4IMjDDr+uVXTGP8SPHLlJNmdsuZfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182396feb38-d048d3bc-8f2b-4a60-9705-dad62ec5c32b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5e0778d9e34733472831e1e6c34609ce0441a5aa197848aa541aa13e1973095
Date: Tue, 26 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658821012
