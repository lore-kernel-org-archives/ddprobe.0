Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3606D3234
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7321C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680721025;
	bh=TkrbmvnEe4sptO2486RLvYR8/ydQDKwb3Xt3RaY2eoU=;
	h=To:Subject:From:Date:From;
	b=HO/ynWXQx/aVYD+Wmwxh/2sfRXpRe2J+43MpbzSze/1CS9yxM30imebX35CEN7N/m
	 tC6WT/kN8mC9lp6kzL8AcXe/HDgA8zRE+b85mmn6gAezYTvuiThrVWgYUqD7qcgvL+
	 3a4i7yZ126hta5YBV4Mj+21tW0dUqkdwOCEcuQhRl0LoP1kUo1to1r7nWWX4OR3FMC
	 y0J9lkx6pNn9XGbDxlfl1PmVDHAl/g4wDcny1x8bw0qljsQtmTOlyA1bKXh4nW6h8d
	 IiqtZekpn49dC4q4ancmnSecHPJWpnZa0AIaQ9sixD7+2iMNxfkN1wc1rbSPdm8uoB
	 +xB5OsxB68vxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0555C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168072102577.17400.8872527615755033747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffe72e84076a403fdd07f9d32fcf57cb407ddba6d618fafd064e1d52b20565b
Date: Wed, 05 Apr 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680721025
