Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDF55A6B
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7229DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662849653;
	bh=vQM/i6M1L9hCOhbrA3VapEJ4OLTmFxrH+4cIRRRuxig=;
	h=To:Subject:From:Date:From;
	b=B03CZ9IDAzJ0SzL0IppjAxpyN02lOLjsTA5zguiKYJBTrzi/LxsgNxgjTNxY5G2I2
	 +n1ddEuwQZr/HdienRWTa47nj/GeU5jzrTepZTpCRo/Pu7alO09dV7jxDxVqOYjzN8
	 t4I2daZQawyZVf8QXhxEUoV8n/NA4+udjmHhzrKvXXVAHiQ7oje531ZdijO/C0sxfG
	 sbQvKq8NgfKbE+AGRI2wTN6w+R+5QlhdZCZYyJ9KSSZOUURK2hN9aJ4QF3p+h/Gx3B
	 YWzvTfimVbYa/fkViNaMqh1hRBizV0BsDLKNpN+ZV8ylNO6U1YXc4quWp+692acjKx
	 H8tWI8/hc3yPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581D0ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284965333.2973.1333017043827366567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3f67cb97893249b8c57e551357dfb270afd306046567fc95526bd03ddbbc08
Date: Sat, 10 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662849653
