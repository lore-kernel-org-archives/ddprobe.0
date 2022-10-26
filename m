Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CAE1110
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E3EC433B5
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666783253;
	bh=7r9nH472GvNCY9imD1U/aKZGFDixJUGE/3BoKLWaqFY=;
	h=To:Subject:From:Date:From;
	b=AuRxOdVYHRzpq5d/vFvb1LdwdxWXwtZGhm9pyaRoT5xGFgyhoRBtvhDZmuFR8tqGg
	 69+H2si93cUtUyCM6VMWV0EMYKPTJVBirAAzqF5jKgfFoN5T64qxWc/FAXP42AjAIe
	 2fraVnF5RAUVNaRzxKMfFiU8ZHD/2j1sXac3o1no1XbK9mj9Sd88Wx1l+Em8VJfH3/
	 lWiNgaYOdooUf7AdA+Jdv3BgOEVum9m21G3UZu7/6pacsIWbGyLRPunwsQ8NPGot+t
	 iXYGaDMZnDkDDFm4dZLtwQPqAM+7QMCxuMy6kh8U/SlRhc40Jlay3axsPRPEDYjW8J
	 9rNw41fE6feNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52438C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678325332.11940.10757376976767073197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7e515e7af9eb69066685a1bcd3cb923b8631fd53e1c465a72734ef47f5ea5b
Date: Wed, 26 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666783253
