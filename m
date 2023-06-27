Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC547E6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43DDC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687899788;
	bh=dX7WT+lmWFjsvMLOi2VFa5QtoR05MYn8U7MwGmHv9lk=;
	h=To:Subject:From:Date:From;
	b=mm/sZNbA6EKnVcIxuv0IxFi6iTaUWMz6xv4r4HVmZ088xUrMwHZGBYMtzT/HfGkfG
	 /pNmrMx9+DuMkYFa3VxzsnXvFnTniv0pkiRmsdJDe/KV70hRnLyjZRBz9u0ySdt6xL
	 hi3TOHS6H2xbdI+5bVnTCUOTqy71rcqKADCB2Xzkgbx8z1oLrkpKwStOi4DclaHKo4
	 Ycq5UAanrWzeFeySMnpd03WjsvJfzBLCFyXUJn46eg7RLY+O0jdl4LslyMHCWvBXl5
	 iYxMNunFVQOg6dkfRMFgwQBHmNyJPA1xuo8xDvm5s9Q3opAHuGNXbjSjHAxxicJxAv
	 wmFZHXKnJSvYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2287EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789978871.6539.17779530817209822569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283a17091ddbf78ec9951d0da6fec1a3af67d7a48f6465f74c9f9b339b5b7d67
Date: Tue, 27 Jun 2023 21:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687899788
