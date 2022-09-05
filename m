Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B6E7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7E5C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662349253;
	bh=u7LBuqJsJp/NkD+go9m7u95mKkRsFqzLzYfOULqwYJk=;
	h=To:Subject:From:Date:From;
	b=izZt85r68ISEpj71kkA6y4XXVQNpjNdIKcjSmfdT0JUALmMNDDMprr3MQ9o9ligq6
	 baMOMH53wioJvuv5ou2lO8MMb229HaB7O7fnMaKqBFQA5UJNALROTjfl7q7AoixQjW
	 7hfWxyxYT6lzpjoWXVZ/A1bKpr0Dzy1HYFPoZ6nnxBFlgnNHbdghShaYGRbDjur81p
	 LZdBNlEO83lczaZCASZpAs7OAAJS6ft2sMwG8FqOmZa+avV4iWe5Pl7LZc1kozL1X0
	 taUdK4LTbmSWn/6MtTisW9MV9k5MrNRX/eEgxCi1OmW2FD3rxFBCkU8l/CQj3bH3hr
	 rM4JHNbeL8Raw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55572ECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234925334.9357.5570493111781306475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b00489a676c84b1ae56a018db9de28229fe0ee009a976a1a43f4308882f33f4
Date: Mon, 05 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662349253
