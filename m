Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AE37A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 05:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650519958;
	h=To:Subject:From:Message-Id:Date;
	bh=2DSBFQuvR52ab2lQ0vt2H7WHbT+VIu9ApFVJbmsNCqE=;
	b=T8zJX4IiF39Z1L6H69Kzb+EcoY4/y8S4C8jQbJTSQndNx7LonjvuJ/3/76PNuM8A
	r1sqm+Ipt1SvOZEPc6vbHqKF5NVC+AZgVCP87/omIFkQUunaoCWEOW12susY1xu+Ke0
	VOiOj2SV9auloMVMwhBWfr47pFvI+aGa394ceRwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650519958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2DSBFQuvR52ab2lQ0vt2H7WHbT+VIu9ApFVJbmsNCqE=;
	b=bGeQH9RYZB3DxO6dWABY1MwUIYj2xRTVtWfDK2iYhzTfa4scVO8iX6T8NfaPyiR2
	DA0HU+LtqvkDRZL5gIQn52UpXaKdfJu5xtjfvYl1aN8vwMYQnjJ+wOosAjTcsvtUGDe
	NvKncKtcJnKoCsOKZWFHPC3Dpx7kpem3PllIl1Yc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804aa7e304-393fc0e3-3379-49df-ab92-f0f6fb4b0ecb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2686f9f65a67680b48cfc4870c38722adba9e1a4720d46c73aada36ee7657b47
Date: Thu, 21 Apr 2022 05:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650519958
