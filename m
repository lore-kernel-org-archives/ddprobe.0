Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65693D95
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648473058;
	h=To:Subject:From:Message-Id:Date;
	bh=fHeVAHjqk/TWcVYdf+NtXEYAm5sJ2AQVYwPRN39E3r0=;
	b=BiyQ/UAi9bSEaB6rIDyyIM3AmHTe4A7e5qdAQCeantnUdguOkQK5MBkhP0n0UIs6
	r7sJaTGFih+/8Fx9S52qQwDS273vWjDLiaVUmID3tMeA5Pr6l95Ik8roqvzvj9lFyT+
	hVDbqr6zIpALvXR4OAWOsZcGPt8wJKB2BqSwhmkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648473058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fHeVAHjqk/TWcVYdf+NtXEYAm5sJ2AQVYwPRN39E3r0=;
	b=Q2EO6kzf2MN9xZoiR+wVmQdSJ7Ke3MP0p/0TIa/RJlN81iK6mgvmDmTzGVpWVwdM
	DAFwb2hEzsLHOB7/oX3fotX+hvV7m3Tj47szZyM0Dv3+knHTYT1pXmkSSPbn3Adn+fC
	UBUneG8S1d7IOQfuafQCY/h8yLms6HP537OOxJ2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0a6abd8-e9c46983-4cd2-48ef-b179-b1844bfcb1b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62fe98e47f8cb6ad71b2a9997ce196406bd4236e3812fe2471b00be3cf44575d
Date: Mon, 28 Mar 2022 13:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648473058
