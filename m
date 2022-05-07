Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124DFA52
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 05:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651901218;
	h=To:Subject:From:Message-Id:Date;
	bh=LkvG9jL1An8SHfj8xeHrwExLnS7wJ3trMwmSly1Loo4=;
	b=MpB1r3TD3ofyB4JeLFinaeU1fKwc7eDM71C6SNOMotBZyVoUdCZZk0F329jFSItu
	pey6bzDJmqaxJynewdkz8U1knBrmTqkLjnCcKu8myalzi1jY7bOTFUrbt1shxAv6sAB
	ybBAgKL5YXPZyPsEhdGqxmm5XLOZ3Evvja5FDsjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651901218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LkvG9jL1An8SHfj8xeHrwExLnS7wJ3trMwmSly1Loo4=;
	b=EikMbLfhyHxYKjpGioG/HrfyrlWhSxVMAbB5AcUyAyZ2xJVSaOdBatfWVVKlSgOr
	BWDrUxtPY0V6CAJBxgcAjTYVQcGYL0wrB9MM4wgDuQPaV9t1A4A1mY7OpBh6264umD3
	vKsUNU/pFZuqe7V/NxaSJ8i31jB01Khz1hizoq6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809cfc3ddf-4fac9df7-294e-4de4-807e-a518718bcc96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2d6f27ee13f28529244ed14a4fd352d59229b49209f538ef356a585a0df36e7
Date: Sat, 7 May 2022 05:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651901218
