Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F5C601C
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658863853;
	h=To:Subject:From:Message-Id:Date;
	bh=XIX5RgDw5pC4b9mu9vCOr4huYOC0NJqKWNbl+ojw/cM=;
	b=AVzBazBUjdrsmZWTResUyTZR3Fd44c/943QrLXBwsiFKh59Fldt9pcRkju7FZRCu
	iL9HAzylACmOuJB0CLMlPID93ZQ58OJwcIkVrbStibuB15BpPWcmPERQd5Qj0yWcZE2
	4Iqx7bCeLptqNim8RdVj8pMvnLkSneB5b76f6kGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658863853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XIX5RgDw5pC4b9mu9vCOr4huYOC0NJqKWNbl+ojw/cM=;
	b=Q1OEFXiCxenkf0hDfKS8FKwdakizp6NIIc8W8PFjEKDWcbzvFCt/pwH/57YOeh66
	gKPpdhaLiCs8RINppuA/v6fFn5icDjQ6EmIFWdNvRhwHpExlOImMEcz1Xgihi3YJdpc
	inkXF5Tc/bHjXo2DCu4H+ko+IAUasbSqf0bIoSUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823bfd9c82-5f11a83e-0dd9-4149-882f-6e0603b071bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96e762dd8adf662a3fd4a57fe92fdfa650bd19b4c402dac10a92304b4198c758
Date: Tue, 26 Jul 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658863852
