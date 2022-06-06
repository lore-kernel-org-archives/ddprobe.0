Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB237E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 06:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654497959;
	h=To:Subject:From:Message-Id:Date;
	bh=6mkCo4bc9EsHqLieKuZ4KNnRGF5AU9fpsC3Vd866lr8=;
	b=APvJKyx+pMt+T19L43k4I5Vp65Vm6n3/foA4nuYgYGU28jvSi8msD0FoP/5OVMFh
	nojq5nrgnGc9YNFkNyRkb2ddkVaqtmMW6nROrVmIssQUAp+GSQjxE/w4iRsaDcOzSby
	6VtVgkqTobyeCCieEapBWY/ud+9voydF22oTObxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654497959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6mkCo4bc9EsHqLieKuZ4KNnRGF5AU9fpsC3Vd866lr8=;
	b=ksVvAtUOUVGTV+N75jl8sY/zDhflfw4psPRvxF1lBcs4mz/APJtyl9o4nY7cY4tH
	OTDtyhUGykkt4nXLluwsi4L+ZfG9aqR+w/VZm4A/y/8ubd+4KnxqUDaOXS30QbYiG21
	4aMUtvlfEjG6yK9bV5XU7dmeugzd4iwfkB3t+mw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137c35d5b-c3a6d806-0967-4024-978e-648fef9e0251-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 218d37fb3ba8d61b98ce7652829521aed0a05fc78b503fbcbeeed34e13afa00a
Date: Mon, 6 Jun 2022 06:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654497959
