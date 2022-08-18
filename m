Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E3C7C
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660812052;
	h=To:Subject:From:Message-Id:Date;
	bh=RjlVYmnlaWtTto4WG/j1MWOI5CH/10h+jLI+V1SmSAg=;
	b=KSjoY4GrE/DY4alE5hg8KPzm4QdGPV2W9esf9RImf4/ry9AyWRptsa6ktjHS3Vd0
	PtUAO1apwkL6NCnNZQrvZ1/lft73sWDfqHN0QvziY2MgYiTIoi16EMfQw2JAnG25Moe
	MEkiBwYT+7CVfA/KFMYOICdbBSQ+ONFXojoUwuvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660812052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RjlVYmnlaWtTto4WG/j1MWOI5CH/10h+jLI+V1SmSAg=;
	b=UJasP51pRXneI0QSGW7tc0Xi4lyLkMW9a4Mnlx95XivplBGHHpijMqdw+nTE6qF2
	kMJSdPlRoD2cbiy2VAtANDkNjDWEMb1UJTbO75H9KHQj2m6bqR6tIDfbhsvoke3gIxI
	sQXS/AwEBhE1sm9AUmN6OY8dVviQbm9WbFKp9uVk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b01cc884-3dc3bbc5-028d-45ab-94d3-662030312389-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a41f360570dae09cf7536d24f579f744f896a107b1a31b77fe2e87301a30b6e1
Date: Thu, 18 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660812052
