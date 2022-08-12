Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763582F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660336852;
	h=To:Subject:From:Message-Id:Date;
	bh=2bVRuzyYGvl/UmbzsvnIk2xIKY4Psg6SOeTlVfT9stE=;
	b=ia41Z0UGBAfmB0FCYhFr4RoZ3FkARlKB8oameGZjBSLIpuEgTs1RCiMyRjd6PK7b
	CCEljBgGttYZnh2Cp53cu8fiMUdoVqboNhS+/1ukeEZCIGl6Og2IgrmN2HVA/UE7/ef
	5CC/sM6KhIIHIF0lEiZhwDP+9tun+0/0iPSB98ms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660336852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2bVRuzyYGvl/UmbzsvnIk2xIKY4Psg6SOeTlVfT9stE=;
	b=BYr34TmnVlj+qw2t7onXWTRmJ5nzhyr+To8QDWTq1UWQMVs6XQx1Py9tcsDPZecd
	RJklNV9lzeYGeYxjTW7HrZzVyr0bcsWiqaNfZ8qe8UVSzorGN/LYHOO1BHzLFSGU+pc
	3QUsBMyvq/XFDiL3dTptc880IBmAYU35B4qrVU9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293c9ce7b-9d5c90a1-754d-46af-857e-247269c8bd65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 801119c4018867c03c4b6a28bd316c2b5694d517985ab65e1d018e297a68738a
Date: Fri, 12 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660336852
