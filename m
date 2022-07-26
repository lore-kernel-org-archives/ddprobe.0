Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4947E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658818612;
	h=To:Subject:From:Message-Id:Date;
	bh=HafiWNOD2dBe35PX+rmb+j9PAzS1vVRJbTi7aH49n0Y=;
	b=e8OHFOZArB+FG2al1mOiDG+MGTeFCVwx3CoGrBaXJyHNWJNQ8eTsmXE3tlLQiLXf
	NfsgDTBGAXW8Cbix3Y26Cf5J+DUfJ4FfQlcNZT/ALO/vizABQjiwkiRueENPE0KFHUb
	rcKHrIdoncweUOeLkOpUFuadl9UEPMeVhP7akbBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658818612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HafiWNOD2dBe35PX+rmb+j9PAzS1vVRJbTi7aH49n0Y=;
	b=PzNAQoHCfku16Fr0vIWCpJRxWFh9NbbPfhEPY4xAx9v9nTkYdTh5jCKj3v/eugOT
	m0wwS+Pmp7vjNBzMerF7jpvnmS1xOcRM4GV+HhLl8IQhvoVteKE7j9FWnnTas63ja8y
	9Qif0rx0tOe2U6Gf6Rsw01tLweICNl+w1noh8WPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182394b4cbc-96d9790d-d832-44ca-a4a5-3a50f87e4efb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee6c032fa5dd257067b3dfc600ea1486d38dd021ed83e1ceb3e9e6e4c77fde8c
Date: Tue, 26 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658818612
