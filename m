Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54144101DE
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 16:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04142C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 16:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684514886;
	bh=AdtN4/YqI164tkoyRn//Id+sRLY66ngKh5gK9iYqp8U=;
	h=To:Subject:From:Date:From;
	b=muqZTGohHVNrqXBjsBSHL/fBRNDl9KUfLr6CVyFJW6bjWnqCWhMRAfGFuz9cbM+vM
	 O9Q4nIJsjlYV/STlNpfFGcilQl5ZFurVQcDr6WuL3yJqAYZxCtO5hX0eGNo44npHd7
	 Qvh80NQ36YMmsaAB1Pwx1XGpfIdEOjHmLfyrSP11X43L/aZddgQaaZX3rv9TfBwKjR
	 itrsTlREC1iac9X4xI+ll/UbVC2MnwNtIgOwizsO0OQharJbjjQQDzR9YhZcxZWLd7
	 HeMMr57cxWi8EIeAdxd4hwCybd3P5W5VGA7HDC4jSMahRV4IyCLeVfyOFp2wYbrJ2H
	 bgDqH5hfzTH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D10A0C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 16:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168451488584.21119.16374828575317997664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8483a93c58888b55e7fb9485c99b8df129c5d7a22042b7c1e88936ca22989a2c
Date: Fri, 19 May 2023 16:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684514885
