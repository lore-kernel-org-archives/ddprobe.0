Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002BA14A87
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFyJJUKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7397BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702981696;
	bh=seZPJzH6Z73Is/bVJcutxOvZrgUFSX3JwJY1S6uxyBs=;
	h=To:Subject:From:Date:From;
	b=IFyJJUKDiaYzFQCOC75Soy6YMTnhQDZ83L8Iax+/Y22WfBi9qArqAKNrcra67OpYw
	 Ed2xrAhHhIgvFNeVQnyUHzn7PeQVVe0JatEMLgRBlYVcsYoKiylwzx6H6m/dOnzHna
	 1QHTiK0tLycS6iPj2+5tA3rSFFZcx7G5MlxyCigoC+oUEbC6OIuy8AWkAkEU7dktax
	 o3VjoTeWq4RyOyEmF0kYx19aiPbZHrsHpGjaU9ELVlZXI6Y7L61LpCYwzNKTAb+gIE
	 MqOk/nhJVlX4QckUYyullYjN8Dq8rkF5yc9Q5fJ22/MC/YroFxqoimImgOvpsufUcy
	 n7wAaDAOMu7SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B264C46CCD
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170298169636.3264.13519040671311407476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7873324b5c764928f68da22a0d8412688d931a695631427758f16f251f76488e
Date: Tue, 19 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702981696
