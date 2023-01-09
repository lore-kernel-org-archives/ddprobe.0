Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CC728E8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92A7FC433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673262687;
	bh=TB2kzVu8yclEgbsBpQSd3/Fta4/E2ASJnVZDiPd9RX4=;
	h=To:Subject:From:Date:From;
	b=aMfijxMf/oOWgO30nQx8lUHNfkLbH9DGrznFH7IJn/0bnp+WIEa9XqHJQDQEeuMbo
	 gInUm9LR2FHOZc+8DC2FxWTzFZ0ue+sHxlcT/8qkSYHGZzCgTCiJ+hf/O9wpe2O1mO
	 jplzPYa89HJBOteTOEMxZksdAIiK2j38ej2CZ0RsAJ/WdPbpDCl3aOTnb9vMktSn3j
	 Ym+3I04CN8o3Dax7mb/pm7IXJVGO2jlM8KJvRqJari0Yftagqr6n9TmZSmmbho5en4
	 1f58hBP7T0pmb5J1tQvj4suZJXiPa01kOztsppmX/mq6S0yaUe7jZw+ZaqG2Z5OCEl
	 fZKa3pJrNF9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D15C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326268745.30110.17874406811104425371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4eda67489b7719c36f930b71042b41153850302c67c8c4e117c6500257da10
Date: Mon, 09 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673262687
