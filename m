Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573C93D87
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659213052;
	h=To:Subject:From:Message-Id:Date;
	bh=YiCtOlKvBFG8pTmTJW6CuwMd0wOwaYgO9R39xPFsqYE=;
	b=MVShQolG4fVE/Kb6g4xSgPxFo9wc2qQnE1SneNI8udL3wjZh95l2Ly6uHgM/6raO
	AzajqsxKyBa99TnfUQnXw40hWQrBan0q+o1v+9MLi6/H0aHRip4eKnIpMRQcmY81GEg
	UC881AdPxKtoLbc1rm2Uo12PF2DMMdg1Xnf7js5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659213052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YiCtOlKvBFG8pTmTJW6CuwMd0wOwaYgO9R39xPFsqYE=;
	b=WNDhzwA9SJz3gpkIXokzeWBlmucLRDjOrlwiBEvYF4uFJC1BHP03XCfPsV5rnkVf
	GX1rXNJik7v+CkkibwG0E8q+Z8W3L1mEk4DEF5LyMlC5WL+tlYW3wIzV/sHNgHl7i44
	NDn+zIpypqj24IDaIriflZXZ2jmvUWanQavtI2BQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250cdfac0-c731c8bf-47a6-42b5-9867-cd50b52111f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df8a6f7033748f608e706ebaebc9cc9f518bae2a238d4cb0e206a5f215ea80ad
Date: Sat, 30 Jul 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659213052
