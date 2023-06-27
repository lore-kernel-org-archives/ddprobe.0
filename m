Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5224717AA9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BABC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687864388;
	bh=b1nQvejFuaQu0jKik1mv4p8eEieedyYS4M7eu7Us+YU=;
	h=To:Subject:From:Date:From;
	b=qs+R2tFbNSq07Q+q2v1PHzWQ+rFEctR2blg8veM8fHyJ4Ggjl6OQAkp7BGvv9JRfo
	 TurOfkJJ1tBVSzgchRX6jk7hrjuoIE+dIWVPAXv35KnsDnWZZWwa0KiViA/92BUTQ2
	 9XtB1QIqg+4P1fEk25jqVyhfkGyiJbeAv16MaGcOE1XBMZO5R+1kHwhSdPFeFjVke+
	 xhBInf89iAwGCV2T7qnb08FVdSEA2loalTldxu84sX9GqzTnMer4e+TnvLTLFEfiRr
	 I/6voMsnkP4Ua/41GTGNgi+Kevdlq/J4gtjRihpboH9w6uO2UOIT4fIm7ENRZXzJCb
	 SxdK8Q3qCbEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF8EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786438868.13548.10749367599546459516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b588c81f16c4862c7a2dc107ef2740f88dabd8b7ced327d805b33bd8e12a83
Date: Tue, 27 Jun 2023 11:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687864388
