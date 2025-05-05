Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB19192D8F
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746413994; cv=none; b=EH6VF2WWfuiTteyoMXqMuGG1ADDIwL5ovnq6QXCI0tdKtXQZ7O3gM4dtNg9+sPp16ONxxfLiFb5l1gplCV9DbricDLCFtgPWdfof7izSWd/LZ4io/XbfTgYdiTirvVbfgupE9+Bd2uZRSXKpYODKtfJbwmBWVqL0yPBwdfL9pL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746413994; c=relaxed/simple;
	bh=nN/LuNp/hlyZOwaohXSV86lWUQn3xejVa59cM++PGmg=;
	h=To:Subject:From:Message-Id:Date; b=NqxpxwD/9vogq0gxVtIbnCfazPdginpLLKL4gAdHoj3m3xAb5e2ro9QuAcBQuhjgzU//YOzOSSYFtoCb18F4LGcVMYNpuy7XhprTxALKh8NZDr7fI4oG/DrpJXu2S1kEtPG6U3E2yagMDNkWolEo3W3fU+snEy7ehK7c+w+4WXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTWEIcee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTWEIcee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D4DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746413993;
	bh=nN/LuNp/hlyZOwaohXSV86lWUQn3xejVa59cM++PGmg=;
	h=To:Subject:From:Date:From;
	b=WTWEIceeJSS93DFfJM0gAFFYH/lACsr4yy2JWHG/7Hd9f/oAY/a8CmDG4Np+uQJEP
	 fnhWj9IjhdgUWEeVFKuS9/nf3t6afkMqW2Hv8J9NN1PcIF49qYq6Eu2wfrMU8xbZrR
	 j5rNxXPhFu7KacRR20qrhfnWqa5GYyrdQoVlEbWcD8E0EoI9mskEZd8YHiVn49KBMI
	 73k4qjwdq+0gC+arqqKZgNvtSjLixjzpb+oOVjQglCDcFkOpJMkW6IkdCMo2oJocV1
	 MiW1Nf+OBLKao9+KM/im/jLg593napiVFAuhNlTg8aVu/3GnNSA+U1DYVTA0CKf7O4
	 IQ2MvAegt6nwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD16C3ABAC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641399357.25468.4856470288486381061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2926bf805dff3f227409ebe748194c194ea111f878125cb1ba9edab779ff9a9e
Date: Mon, 05 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746413993
