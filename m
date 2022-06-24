Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC12728EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656077212;
	h=To:Subject:From:Message-Id:Date;
	bh=ulbTEqCepAJ2gZFjIscOTduRBcklCzcvvDKEtjIIR+E=;
	b=JJN1CBvLhw7TzRX6l7DGkyiA3vWXu+v1wJocwqgd4xW+Yv9SO2J0WPAMbV4Af19f
	jLcINcEr0lcblEtP3UxllZtygur6z1BAkXt8FjtJBYCvBXtLeBRk+PpXRahCi2Hv2Hi
	pomhap3efY1ykjy8bkgY6urOFvl0iYsj58X1Y928=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656077212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ulbTEqCepAJ2gZFjIscOTduRBcklCzcvvDKEtjIIR+E=;
	b=g31liBDcZhOgqgult0Rp2/wUCSOTqcwEfN2hfGsGf6cJgb+LnW9Buc64f1e3R7J4
	SBNcScbNMdkK9H6mbl4tfBYOekWrOTjZRw2mw2JRZzPnY8suxBvmXE/V1gt9oKbhzDa
	DRNlCadPCaAKBNPMGmkK6Mxd35II/hwN2/WevSEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195e4da58-5acc22ac-80bc-45fa-b47d-d944180331a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 847183d8c918b86dadfd4c1c3ef90573f4c2af41e39ba1b7fb6d91d1de64da28
Date: Fri, 24 Jun 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656077212
