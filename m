Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC1D111D
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 18:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0B6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 18:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693162448;
	bh=/QRI5W4l3C78lkT3na6jH6OWEYJSgZVXFeNkW4Oa0DA=;
	h=To:Subject:From:Date:From;
	b=ffGHM/ezlHeo71aDUoti8DCjUuKTh74yoOHz9nZQicTqdq/MalGd0xjeR8QG7HGWJ
	 hEjXoKtWkL1KB+GbrIpXWcr6ZGHKWkSa5t5Eh47CKv1qtr8j7SMiA1y6lmqmLFCYdK
	 WEWC2wnnCIxKINXZFCxNRExn5GSHHL7zCXSZbagimP09EO7YPQrGO6g+BiLN4GMF+T
	 PxtGZgqlY0VQfTzCuU19Cf0jv0LtBR4CCnZOyfoFBYd6yhM/gyDFQoT9DRA6xJaBY7
	 qHgS3RFXc/n1QuQxFK5pAeFxvXhmjMrkM+an1Lfnvrs5UrxyorgtkqUxruQVdXsjh0
	 KdrszvUregf0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DC3C83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 18:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316244866.9857.4085072512998255182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd9bba7dc6f0d4d65f9cae6a9f18ac8f1229ecaf65adaee1f12ba5662a6985d
Date: Sun, 27 Aug 2023 18:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693162448
