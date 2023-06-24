Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1CB6AA8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B7EC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687641188;
	bh=dGIIzfB/l+u6E3Vo6gAt8TpBtYkb/gtXkjS58x+1OFA=;
	h=To:Subject:From:Date:From;
	b=AzVnehVjolshkDtVYm+fD3UnGB08jNeV+DvB9iGpjg77kfhkTdiulOIsR8RJ4pAJi
	 NBmdVnW9pdtI4bsA+7hWpvQMBP63yxHc+dbp7XDnESQVdrQ6Nna3WU+UAI8GeEdBI9
	 piHEEDkGlhwOn8xcvvJLrnRNIG2yajYjV5ezokV4iDROUA0QVbbIbucF3RK/MK0UCH
	 KAwbIHnJnebdR3kWd44HcrRYQsGatqwBoUcY/N5N7a9+v5JkZ3Y6DepUB3ZflpgNHK
	 Mf5/+s7x6kuzjMETuqFUSwPDkqzFwcGJgnKoOOCWglcTx+8cMRoYzOSgq7qQ2OJlpw
	 U91sj8sJuNvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6067EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764118867.32179.16430268061162986330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db8d21e23bbb2eb4d5ad2c33b0d7f862bf6900308dad042fa01644064c0198b
Date: Sat, 24 Jun 2023 21:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687641188
