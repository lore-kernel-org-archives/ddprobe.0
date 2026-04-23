Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5E837C923
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776923854; cv=none; b=dufobHBUT6YiQHyuDg68uI/vKy/frShicEB0jljNlIz+6IV1bdY/Co71s5aEnfvZSIlxHx/yQdi1VCQqZ3sNxJoAguO1B+wPd6v1Vlpl9uMjkkswUwwLTVaxKfb9VBKWsYiCXSzwA+B9YpR6zn/zIJE4DJafqeeUiIN4D8gTvlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776923854; c=relaxed/simple;
	bh=JCps9nT+by+FjXntmEp2Gm4k6IpoSTgdGO4RQEufmW8=;
	h=To:Subject:From:Message-Id:Date; b=dilE3hzB4CnazPUTkJ6LqfwgZ4PWgfp3qrS/X2e3nlWOtTmdqt4yQoAifwOiApaWi0W69dzVip0OkorU2lMpYEeUozP0otwTZA1qRzBtxTAN/8SHduHd34ZRM3FK92TJNyfF0JoocUMIwfOKhM9oGWL3C8vLmvIGCp9AHQfxtMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0RQ8ieA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0RQ8ieA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB90CC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776923853;
	bh=JCps9nT+by+FjXntmEp2Gm4k6IpoSTgdGO4RQEufmW8=;
	h=To:Subject:From:Date:From;
	b=V0RQ8ieAHAfWVFaWid5JEhGbMRiNpe0v+hw8ZEX22wTCROaqB4ZwQ3OpkC4Zrcdgu
	 wOKmBvZLW3NxKyelUF1OAuHN0JCVXQaq2tXmABiTAk05tBjT+YyrayAswW7nXO1e0T
	 sMoQLYZCe/zN8UUfg53jfEon+5ze068vGz9T6orqWXcEtyVmSeDYIrx7QKtm+3oRmw
	 pv6HKWZzZb6fFI/b1yOx8tnkEyqvSYaGeq6eAAKtmh1uc7Hw6Dgtpp1+EmnRcVI2+r
	 c5/KQe6gHOASCJVgcFZ+61fUYp+SQxMBeMZB+XmJ+qkmaSYmffb6RVRQ0+Dbzfba33
	 iOFjM+/KNo4Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC7FFAD41B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692385369.7625.13384952825800107566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446bb28cde0a1753dc713f9ee8fa4f5024ca933a1a810ab18fee6583f15bcf59
Date: Thu, 23 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776923853
