Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224BA78F2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762610394; cv=none; b=QtWLu52KYzguELSQ8FXLjY/EWf/Uwtj3pXIruTrdp0NzGa/ETklJE3yjwmGQgxF6RSMmMgttXH9s8YT+1NlKTFch0ZUAWtbfzTW8Xr0mab1on8q7C/MoNqMPEV6mzmrwSOZM0DJ/AHN23veWPdWITewC9iXfGigJ3cwQXOGbMxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762610394; c=relaxed/simple;
	bh=uk0oc5ksiCaOhYu6u41e88B1GaljrAhBl9YLCX4biyE=;
	h=To:Subject:From:Message-Id:Date; b=u9eOKp1F0NsLMR0PaA+ARa81VJz/GaBnYg8JjrxK8A93vF1LpuM+jFMpUGwpDDILSG1rfcTJT//IAs+gYbFf3SfoG4JH8sqL9kMoKd6qEABs8hCeGDftILuPLYXk0d7/SaC+Vps4Ommv5OIXtO+jtNvRvVcirq5q6BvS92u0B44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxyyLxne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxyyLxne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4036C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762610393;
	bh=uk0oc5ksiCaOhYu6u41e88B1GaljrAhBl9YLCX4biyE=;
	h=To:Subject:From:Date:From;
	b=ZxyyLxne5nnKRHaNyWb4x+Phky5T8sotvBeHGceBIwJVVcQuEXLdgM3QtS9cR3OeQ
	 oahnr3TN+xkGf/ixMBYUotd6kAxnJ6E2lm5N2Ddy7A1yRFrW0vXp5+t9NUa5NAhJhH
	 6Ax4qcWNcB+hAeTs8mhHIMoUC8nRNhOMPyCPO2HeNmz57MSwZqgLl+jcyHgrwZKAie
	 QcFrX2ZkqhFX8NzukWxMWH6mRo1mcMWhXcG0ONvo8GPICi3xDNejDYLNY8W7xIpcUg
	 /e3et498/t4q+QYTtzsN4tkm/5vAYu5pKN8YT8Z/XhWQST4kLi2IfDIZj8zrP08qhR
	 RxGGRhhrSdAhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96509CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261039359.23574.8261360260574988472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23db9dea6b77267b8ebb9aaf16f6f8644b23a05edca37bee942b53b8a131abb
Date: Sat, 08 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762610393
