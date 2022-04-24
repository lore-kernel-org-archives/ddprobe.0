Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCF07C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 19:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650827638;
	h=To:Subject:From:Message-Id:Date;
	bh=WzrWfct3DtHMq5M8ZnQhPWVCojaHVcrRAvao+GX/fNA=;
	b=A/Ww4rOJh8rhTTsiIBDuth/s/R/x8sHhXPMgGZIIcQ44a/h3qtb7SUdiJ16cB7nR
	sXajYHZl37ULAPKeQwwKIhti2aUjVTU+sa+4Frmfz0/d1aLecrZbkhwzV8BBYySHPwv
	D/Z9rR/NtxTh084FynScsD45xhOEhfHpk5ORGq8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650827638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WzrWfct3DtHMq5M8ZnQhPWVCojaHVcrRAvao+GX/fNA=;
	b=HZf+GtrCgWArHRec4Gcbp7BRL7JhTrRRKJiM0zCGKPfgnh25zjnkGCo3eh/RWBEZ
	dKsx34/wT3cvtedrlzq9G4x0BDUuJW6VZZdnXkhJTjBFnqZ/wCP11xj2BViI1jzsvcG
	HacFbog26JED+KZTOEbsUtCNLnRiK93pUwPHO2eY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805cfeb618-5a3f6e82-4e0b-4cbb-a705-623cab9a754d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4ea560d64ee448e2341ebdac68c2ed6400dc8162117eb817ae3bc890a6eb09d
Date: Sun, 24 Apr 2022 19:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650827638
