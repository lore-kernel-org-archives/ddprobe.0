Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00389320B
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIeMIqqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8013BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702406296;
	bh=ahHjC9gYw+l+sZZH9Df0HJ80D27w6L7IEfB3hdA7EX4=;
	h=To:Subject:From:Date:From;
	b=jIeMIqqpiuHsG93zJW0hWyJGTplC6zTHpDVXvhUcCiUKzOaEJuNvVdvRM3HgIKR5K
	 Wv4ifpgbDEPtL5dsCqRpl9LOHcv41DNPgUKrx8IkJAqxnPpT1lMnuT3YodnUtNgjq/
	 y7pvtR6Y7BfcN3qeE48plzPrpUXIFZMIYzJ3kLnjlXbYPmNhdk5KNFtRa3UQzdQIii
	 YCRcPgCkVdQ8QhiC3N9B6l0RbFkenCVbc+imzvJ2TLegtoM9UDYWLGtQDmS7I4SezD
	 YLePJggfMoz6dopKeWwOIB5Ob1oeYLNe6H6jtrbgx7yieNN5VmYMRqIWf9R2MEMjva
	 8CyGzbhVFzXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BDBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170240629639.21861.10131980705639495890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46fc476479dca06961aeef7ce1d8cbb1dc4237372734bb87924b7ae10eab7de
Date: Tue, 12 Dec 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702406296
