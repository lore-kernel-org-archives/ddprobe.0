Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56765639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660360852;
	h=To:Subject:From:Message-Id:Date;
	bh=gkzkUADCOpzy2aGwM55+bBm3HA+WL/46dZYQRfxPRoE=;
	b=HRlzTTkbJoutdf7ee2npWBEEvNZES+PO/HHnfHUNFapags3bB5dZ3RxEhNvJYD/Q
	eT5n6jPwGKbmOu198DVWDatq8wkGxB0it0nl9urAR4m5stmuVQ6UnO6MGLBugcH9t0/
	GtsJBSH1Vuo3DBVaAursBgB7en3lul8uW0j9+RKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660360852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gkzkUADCOpzy2aGwM55+bBm3HA+WL/46dZYQRfxPRoE=;
	b=BfhbQUYqLtPBaZerkAbohJCLAQa3YxL3AYQTEyR7YRTByGEoiOYu7MKjuhDkRE+H
	MZY15B3vgw9zZvQ3ct09VUg6OjZ+Yvs/undiTNbF8Wp1BRdg8vG1SH8TrNBTq+DwBRi
	bsBfFtt3gO8NnRH+TqfxM7rwPJ0EXmujgBeMoOEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295380438-231b10ed-3777-4921-ba2c-97ec54762992-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d21417b7b5885b111a04ae12ffa36ca04326ba4b8869171f8ce58d05130b6cc
Date: Sat, 13 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660360852
