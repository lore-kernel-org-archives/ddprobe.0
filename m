Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F6965C
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711074497; cv=none; b=rVmb/7FZUrs3OkWFAXGErqFRLjOPktJs1M0SWctVi8mId0ZxX4JZyoKywXEGxVx3Ha7fUEeF74/mwjqSepCHhjAJexambP/+EYqk00l67v36wrETpfiuhXCPACBTfzsaXgJ4yzZW46cyrnZnmwtcpj2Py2q42WMBYkHyA5q2X/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711074497; c=relaxed/simple;
	bh=17e0Y7Zio4jQGWobkdQXYvb1I45cAZdDmf8cWdlWujU=;
	h=To:Subject:From:Message-Id:Date; b=bpCbAjWbKdUHc4qtSZTFGfKliIpded3w9uM/QpYXJgWC17EfhXr9/MYzQ07OKW1j5fLHFBeIWK1/IY+Vf+JxvaUFG7IjP0Wkgu91IrXC7NZ6iVcHW2k7OuccIT+1qq33SBigoOsYS7LGIa4Za+ytyTzGvlWufkvH9WhpDV7DuDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+zetqCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+zetqCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E82C433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711074496;
	bh=17e0Y7Zio4jQGWobkdQXYvb1I45cAZdDmf8cWdlWujU=;
	h=To:Subject:From:Date:From;
	b=h+zetqCLxjfz2BaqJdCCMqABk33CBtdzL1P0bCgJVkZxOkkiP/bWmSAp2mF6ZiENW
	 8Nvt+9gEfmG0OijTYQmGHArAjglqye5eYN+a9ZOfytw8A5xVRsvXDRVm8Oqtxxz5eD
	 Zbxnbv5V2zJSzS5qBebsDdAkAjpAzdkOE3dNGITfE8WFUAXBNiGOFTQFbRKjKxIJAE
	 c5UI4GDb7lB8g2RVlqBqg4uCtt+PC8uAgSGAuIvICJniMqpwLyS4/MNjufurjWoHMH
	 pYtU006XzJxOjjKrij/YUsEHTTXWjvWk7HT0ioV+Ih/Vl6NOq9fjY2wi+q/F/qtTnB
	 N5lFb9xclkDMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D98C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171107449640.4485.13465646010091896462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3651543eb370bceee344ec7b51c38d4e276122e95127323728a993d3cdb349b4
Date: Fri, 22 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711074496
