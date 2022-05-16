Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119397A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 08:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652688239;
	h=To:Subject:From:Message-Id:Date;
	bh=uLGuAltJe6L7HQI0JNaag1NrxlNbDXyPUKVm7zOF6l8=;
	b=RYpigvm08L4NPKWLIDKpfQnV2xtithYrzcaB0AzajJtC5nYFOg7vZis2UWguHVKR
	ZuNtYTniVTvpkRyySQrl0Q15d0Jm9Mns6s2xezHWgc8Uv7mp1JCsD/UDbsy5MUOOR8m
	QwfROt6SQHZPUaSWM/sw+7XvtnKIKevmLSK5v/I4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652688239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uLGuAltJe6L7HQI0JNaag1NrxlNbDXyPUKVm7zOF6l8=;
	b=Gq9sgJO89RJ7M4SbVQuWmuRm1aFuhSyqasHsSZPq7PwMzljgGFZs0eHS+coha75E
	N7meSH4+kdXnS9TY5rIiTwxbnANSpOSk0N4jkeDQKC+dtLLyBipem+Ximb3je0ScblR
	/us6lvPBauP+FE7s9tibZcYiN5lfw+iVPrnV6A9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cbe53ac2-ef5b99e1-bd8e-49a7-8fce-b5ebfc2d20fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ec54439ff624b9f262520c5c0352c2ffc908a7fae120d16dc91aaae2351fbaa
Date: Mon, 16 May 2022 08:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652688239
