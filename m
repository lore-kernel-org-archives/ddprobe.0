Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13ED2EBB86
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766172833; cv=none; b=q4erSWUIL8zvan7l+WqEifAjtmomUDx9o2P4wkOUVBSa1k2VoEykPtwn76PPBYG725G0MwPcoCG7On6eGDjRT1E4Gha2Cpddyq0/qPN14sNpGA2zb3dd2GBdCajm9NATBu6y/xF1vwqX8sHwOYJ/1ORBlZGPHzEwDY4cfc4zpTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766172833; c=relaxed/simple;
	bh=5odg9Nry4ad7noq7ZmY7/YAjlgsC8PYeOZZbHU0QWD0=;
	h=To:Subject:From:Message-Id:Date; b=aokcYXkPW8p99JaaVs8Hyqy7zyWeVv7at6KHlu2bgxIi+H+t6B3+ZYsDZjNWHYAwXq75C/QYeH2aeSeuA/iQytwh98bTASOf34hTugzWLPd18woN8hG9QOspZs7FMX7MPwU5KVBzpREKtKr3fgTYZv74/JwT0D4I+izYDRONpjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru6oR+iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru6oR+iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0555C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766172833;
	bh=5odg9Nry4ad7noq7ZmY7/YAjlgsC8PYeOZZbHU0QWD0=;
	h=To:Subject:From:Date:From;
	b=ru6oR+iEyegGEB9BlGAZNfgJIIjoTYlinSviujDNf5JTyopkFGm2svC6gTi3H8Kcz
	 6F3a2zzi/rcfbX+/dNtvW3YCSIXhBNwAumkHpLgOuwAvQN7HQk2hgxv7LK9dp2J+Px
	 benhE6c1Z+Cpxz6K8oT1ySUmuMNUGf6ZVo0neZOJ2MR0cOpeeXEeEPVpMWxnWbCjjw
	 qZUZFd+QdU+TH+M6XpAzQoG1WtJhco45XK6a52xrpRoiM+kqy1kK2lyUj6rOHl3jDb
	 OOh0+Tf0QBXghN/oPH5N7o38SQPtZbHDlZ/qBvKNXXi9+kfTC3M0XkUZBIyUKjkVdc
	 E81eFxJbyZ/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128FD78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617283358.1003.12291776272861047589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfeed796d31627340b77dfe8fee197fd42a1abdbee716902182ef3b712cbfa6
Date: Fri, 19 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766172833
