Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E84B7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15DDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678551305;
	bh=mrRYZzQGee6e0CX7Q5wLUkKyXR/P5CxHdsYGdI+XKhE=;
	h=To:Subject:From:Date:From;
	b=Fsd8Bm2WXIAR0H8IVTuwOlX37i8tIlzFljeKkSd7vPTlQTyQnwYEKNJx6qhohfuv3
	 eonlSJl5aSTwXqDLsFwfv0nDMRMW9hf7ewBhfMkZ/cBpBeu4ezBeiCDh8qCLC4zhWQ
	 gMnUcbzgPfFLHda4kvXKfSwRFAOG47K0Bxw432UF1uphwEjC972+dA7FzvDpL4u+ay
	 tovkTwwvl9RIa8jLjflEcmD8Mw8BoWQLdViIjktZU6/En3X8ISTE8m5jPm9We1ikUM
	 VDUi0CY+SibFvIxri+AlRmlw6Lw2uFLjWlmAyqGDnJN3IkA1vnhNDoorIB7kwWgnWZ
	 DCeURsw2h3dhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F76C74A4B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167855130573.26072.8550524788588805425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729ccea8d44669b65870e7e8a6933ca7cf76d61424c4160af4d06010a5850206
Date: Sat, 11 Mar 2023 16:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678551305
