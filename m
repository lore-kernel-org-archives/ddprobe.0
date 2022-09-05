Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C733D82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67425C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662379253;
	bh=/zAUl7r8JIjoH8eUzKVCZy6BhRqouOIaySm3wH6aGkA=;
	h=To:Subject:From:Date:From;
	b=UX76Onl4zYpx61unLYa002Bglwg9ff1VGDQbnhWxU4CW+aRL+kq0MlRITmOA72LN1
	 lXHzOBC5x5ZvOpay0UWeonJf1cYNxaC/pfn7LtpX0RrCqdH9bj5yteNzXaDdZfeOkS
	 Z1HcF3w1CPcO8cYSE6rRYeAI/VTW+0egssXBNMfOslHY7CtYKORaSfQ6TuZwXEq4Ay
	 9OwfcQ3Dx70QwWc8OZdqfIlSyvtV9b01lcU+keyyL5nqCpS7eqsahOKuNGFqq34sBw
	 nkiVeUxr5zqUxXCoep4F5dZzTOAwImkafRSaLwdAkaA8+M5itrW6kDQ+9RNfK2lakz
	 yKRhDkDgDQGbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517C0ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237925332.16693.2245833692432128907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57732c042e719601f3ac9a885eb10eb5fc41afa5b434963c2ddd5aeb9d0d474
Date: Mon, 05 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662379253
