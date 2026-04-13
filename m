Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1361FD4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776048454; cv=none; b=pZYC1Tp1eJdnj6hMEJsK0gmPBEwt8gb9hpeeOsSoezsM1YMFkG++lyhdei6Dn+MSp4t3b2DnYJbEB0EWBLqB8sPliDGQfEhzsIQpaTeWGQUcg0c5WNRkr9BNTa1wosdUID+4xe12Uon6v3NHLzj8M1+jnv+WMlpW7RZtR7Oft7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776048454; c=relaxed/simple;
	bh=3DZW3h4Js99t/nuJcXWxoQylesnyII+sk4cNmE6bwxE=;
	h=To:Subject:From:Message-Id:Date; b=uXk2kEuyQwLr+yiqpS8mASJwBdrhpCzWR1PpnFp8FUbID9+W4LscQ6wXK13562qzCHEkiJIvQCOAz/QbbpjkCeB0pVJCPjyhODSDuQpjpdKNKHa1x7f6bdSMs6mLtL8DzySwjfds+5798f6OdTqELtbp0kiR+6R972LNyTRZUVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp2mPnF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp2mPnF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E06C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776048453;
	bh=3DZW3h4Js99t/nuJcXWxoQylesnyII+sk4cNmE6bwxE=;
	h=To:Subject:From:Date:From;
	b=Cp2mPnF+JAAi8pAYWk2EnVyO+3Cv0z90BaMzig7o/UYXJSu9blXLA2LOEyJRO167N
	 FNrYdH8Sj3ojYtuF3uggGy25iTLjl0cdvzIV82l5z69rasBOMHa0Pc4XMdcu+qz8Wk
	 CXjAL47Hr7T0uh68MiYQhxCyVwBTr6v13VynfW3YG1zImjkoqB1cen0AxSEGZZfmrS
	 w1kffZT/W00C+Jn8aZfx6hHXa9Z4A3MXF5BO7zDfX08noVKpGyvUYMhxbHqQnaRr5O
	 sJ6J90bAjZZ/T93Z9YYR4onA2fz9lyURe1PZfwJfT5b6RJa41BAHx0TgsiIgO5PiDc
	 64YRb7uyL4aeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEE3E93808
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604845368.2495.11015725608277288805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e1744a60fa5229943eabfd8ec19b40fbe33ca0c2a8f0c8d9844f8fe467fb97
Date: Mon, 13 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776048453
