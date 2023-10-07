Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF6263D1
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 06:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgDHlqER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24EBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696660028;
	bh=v/OlUA+MNNOZzig9SC+72INj02TFZvFUa5C7K1WuYoo=;
	h=To:Subject:From:Date:From;
	b=LgDHlqERrtoGfijiBo+weYaxU/D1M/QnJkT+FiKSKumCexpGNLoL5kbCkyBC8Zckm
	 ulkfwE/RFY1t6UwB4qGOU4uhpmkJxqFukMADhqlHuFGhvrSOZSBU7+pOD+dhNrx90l
	 hBZ3OL2M0J7ko3dr4QwJWwLYpcVntTgGnrvK9rEeqlISGFAINYeeFDbr+67F02AaLO
	 lpzabCU6cuqKZGpXdMV2gpKZvyjMFTYoKscQoywf7XJ3iqSFVqeeWJVvoxZ3mcxx8e
	 Y2hqxHtIgz0g90N2xIwsBCGmQQrgO7Wi4xNjOxMwUHiQwbdPUpVv6EKyPtliwxjd8A
	 3FGLniBH8ulzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF916E92FFC
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666002871.25329.15940610847710682221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f82712be90c93f99ae591ccc794fd2d2c994b412803353db5c06d0daf13f05
Date: Sat, 07 Oct 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696660028
