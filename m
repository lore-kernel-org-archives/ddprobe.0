Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7D61850
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 12:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD1AC4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 12:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679316425;
	bh=fL5Br/Su30oHL+9ZQbxceDxF8rIPJCfGgkSS/Txjbp8=;
	h=To:Subject:From:Date:From;
	b=uKuuye0nGAbJ3qDcTzxkllJyM7zSU3HXgPGaPLyO1eIykVEkH9CH80sJ53ctqqVEi
	 RZfFzw767JOHJOnOZG1YwmZtVK92uXAi/a70PY8919RG9AgQ6gETSYAZgeaBKTMUI+
	 r1TL9yrD+g89h1O83UjUG69LuIPAKcX+q3ldkyjPfKYuiRHATgGxS4hXcB7mGKITjo
	 274gYEhC1SkyEQCd+HTrIFWunCiIBvo4V2Ag525vS2UMlig1lxcduQmOu8YsXkrNzs
	 dLPjH5xpAGry3nyaMj5b9VkaGPC2dvFNrSfDK5pDKlRHVF6MUydczyY8Yd+Xs7jim8
	 n6SNc8bq/KT3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C443FC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 12:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167931642579.5488.457675898468010560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8b414d7f880d0756730896b92a475870aedf0ac394facfe4235d099fc7b73e
Date: Mon, 20 Mar 2023 12:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679316425
