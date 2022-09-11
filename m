Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBFE7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D868C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662906053;
	bh=SIqWe1SzX7xpAhPNd7qPp70jU3fiQ7gxlr8G5FjRjjg=;
	h=To:Subject:From:Date:From;
	b=RiH6fogKNDHwUD4EiEdwrfOfNEpU52YlmwXFc5yoxE5jbNbldTOvMtssjCkE/vZES
	 8BFF1Ml06+Qh129ySvShFRgq5WeJFJ6y1gEQG5VFC5VsTx5vo8KPAUdc5W+aj6ZPdh
	 VmfwKw627bKi0v3oq1j/mNHpApToekgB4zLszb8FkRt50WZ1jBvduZ5MWMAuLLGeT6
	 fqztooduesFty6fMQgHzSyO/RlBD+y4rO76A3pNtS1vpIBVntgms0AYJF2fFR451cz
	 ET8kwvOeZWwkRHu2v6jKhPjR2aIwsPgVu0QKRc3Bdvlg7JFbjx4xcaE9XFJOVVvMeT
	 sfJzvejg31faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C3EC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166290605333.3197.10555322327283310745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e63f5296a9115b1b6b0df4847a47e6a9881e091bf26940b4cf0df9ddcaf190
Date: Sun, 11 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662906053
