Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209DCEC0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 13:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655039819;
	h=To:Subject:From:Message-Id:Date;
	bh=5nm/de3zDH18gs3dBHAL4J3ks9pgSAm0+Nl+pnDhDaE=;
	b=VWHR4zsfM+S6UUMq7dw6tTUiJdPBAIOQh6kpYu/yWiI6PuZWcATQkjjMyrNk1g+K
	OsiMqoeOWfpTf7Zjp+JVmMmep5Q1ANTKH49+izfjMyGD3B2I02lKH5z3Gk/Z7trFunW
	qsHqAKitLS+2d52gWOTOY/5x5mYNv1VbX+VBL4X8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655039819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5nm/de3zDH18gs3dBHAL4J3ks9pgSAm0+Nl+pnDhDaE=;
	b=hxGb2XhjKSoOIy4exM0eVxum+2aEEFagOdU87bmfuDWWKhINPMg8GanGsZS7UFqV
	Bc1ypu18N4G/QU5+1c3i8aSA5o0rtFv5B7KLUtDTmFUIUxqM1sLnoy1mRDfQ7R7Iec/
	4t9nfmC78j9X5Rog2qLfVrUTZaLXEZi604xhtObM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181580f7e34-4380f6ca-ffcf-4f75-b496-ee5f7aaeaa9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77c7679ad83b5b25d9c14f0734cc5164359e97bc22c4092c629613cab0d3d6cd
Date: Sun, 12 Jun 2022 13:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655039819
