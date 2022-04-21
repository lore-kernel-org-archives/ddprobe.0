Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196BB1FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 07:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650525058;
	h=To:Subject:From:Message-Id:Date;
	bh=Gd6/JBDRP89PDCD+Xlle401LhnPj2wEqDaknC4m9fdI=;
	b=mtJM2GUEn7Gt/Pb1Bwba9tNsXdo6R63r0Di+fynkxHij/gmMlDtJBLxb1vuHsbaJ
	3l7Q45YlOgztBUvQ7H2QCkhKYE8IBmt7jFia1XlW4hHuXpLBp2rjgcaUJsvKU+Zft88
	pCaEbvkvnqhWpWEL+RDNwuWSygUwFeI0UpYDXPLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650525058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gd6/JBDRP89PDCD+Xlle401LhnPj2wEqDaknC4m9fdI=;
	b=QTnrMzGEGiPN5I3gVg+zrBiSPf6Lz37Cvc4FUwi16B6Rna1D1ygl8uBHIHHZZXgR
	SM+baj2bCPVq8R2OlCMAsKLd7udZ/9uBOppCA5QR5ageqJEudOSp4BwqPEw5cJI0ukw
	k85SPZJ1tu9W1LhSoUr8ZAonoaMsEMoahWAI3p34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804af5b4bf-c11a8643-0906-4d74-82b7-93121746806c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e958b2606a54f4fd6efc10acecfa7f5935180618c43642a6afbcceb16b7d9ed
Date: Thu, 21 Apr 2022 07:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650525058
