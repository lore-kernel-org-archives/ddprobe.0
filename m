Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C581B8F78
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B09C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667909454;
	bh=pzE04UK1XSgTwsCcUtSb4gQeeVrEN+g286a1XciNEwo=;
	h=To:Subject:From:Date:From;
	b=eM3woVETpQmZeS+H8xBUPcbKtmW0jLe/QIL+NMHz9hY/RuG2+o7wiUKtvI6yBdkYv
	 MkRsFHEVxsDaZasgqknLeWtHHdKUbQ3lOs3OZfke7RCLrV6Wf5dWdv8h355foyuII3
	 n0tcFy+e7DiHF/Sqvyql+zEJDkobPfDEub/ucciVfhreOItHFqQBoh6F0EZ0bhlJYK
	 9ve0aIpJDuKDF4lHso7/ozvZZaIPRgGxS65H0kth0ZBoN8kXXUF4foQ4/Xxu5QJqNS
	 Hn3DEZbF3uKC1VNnsbDRRI8iXJhq0hQ0pp/p7AXvzP5XADXf8aeyoVXqu9wnMZSvfU
	 ZYJIIbFJ9C2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5674FC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166790945434.4748.18080242312542042611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2bfcf55286d5ddee583164d3667c38df6d9fe853cdba4cad4b1f9977f80561
Date: Tue, 08 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667909454
