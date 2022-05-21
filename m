Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199B018E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 06:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653115379;
	h=To:Subject:From:Message-Id:Date;
	bh=xKzo/E5WJv4W82irqIq6EMRMIOrFANli3cUn6W9Qyao=;
	b=dnCTKdFrraQIMkbo1YsAyDYLCenKHyVYtkyv2VDR2MFL+xVkyPISFl2SXQNynDCT
	03ngERoARQluYZ3bdJR5erQANR9A1BPOqpP2UfRELvDQE8BTiDAofg7sxzTPPw7lMnx
	8u63uwdntQSdWW4ltsCZHm7a09iNRubO2ytc78t0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653115379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xKzo/E5WJv4W82irqIq6EMRMIOrFANli3cUn6W9Qyao=;
	b=gtvVUcoRJKnpBSLNMX5o7wire8kxl/OEi3ecx5Xl6OhqcVQfAc4P2hByOR3KZ2q2
	2MH60F2IFEBNeMy3a5UGuKKb+uuTnJQQImnPbr6RhGe9uxaqDfIk1V4XotSRBAlgDRb
	VNxlsneEmHRz3kU9k5ePlHsOGA150q2F/KBpQuqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e55ade84-9765ca88-1269-4b22-94fa-bf34de0b2711-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15a55b3e8ed87c1a85d90e6cf92a104c908fa3ab02d477b9dbf95a8187834b15
Date: Sat, 21 May 2022 06:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653115379
