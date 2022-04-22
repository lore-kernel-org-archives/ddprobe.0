Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022482C80
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 19:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650657298;
	h=To:Subject:From:Message-Id:Date;
	bh=9hxV4bPF3JrnfErQqJodZZwTA52Bpmd9ptkRyWEFcJE=;
	b=DlPyTIeAlZiyRCGVhaT++af4ljrObvkEPZwb/HD7uirnkbxoURk1euRTyhjJLEzO
	Un63+VTGbucfQ0PUavZiQwagGi3KiUQRHWczPZwOChALI3Ny8AInfPJq3DqzoqsYtVw
	QqxsLicHRFYF2aTfIe98Mf6l0ayZtPGcy/khQDz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650657298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9hxV4bPF3JrnfErQqJodZZwTA52Bpmd9ptkRyWEFcJE=;
	b=Or/6hyXmpx5aMG4IT/zY0qNwModJrbRhSTbJITWKW4mm7ccIbH4K8QOd4slQOosH
	JYCE21bJMrT7TXl8wREytc28GF9tL8VACdBZGsQXCUVtSsORLbxt3dER1iyXzr8ySiG
	Xyn/qTvxannNLoN9YIqlfCW0LywGxrLq/JciIdvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052d78754-6ca90b48-87a4-4520-bc38-be3d820a66c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a64a984af77a23f77d82091d8a807f6120b57fdcf7076a98de439862e9638ec
Date: Fri, 22 Apr 2022 19:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650657298
