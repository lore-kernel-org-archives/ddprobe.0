Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B3B24113C
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741185534; cv=none; b=qCOM10oMa8IUrKLuzqnVYD0rWQu7lAbYkOjEyacyRLW1XGO2rRm+/b8L+Qf25dxGLhS6JLKsVI15aUW6jjsQv9IT462sxGos6OCre8JQdXh1eiP3lLi/xS6YUa2P+n9H+F26dpSSU1TrfvsPuXlWSXfzb+yR4wQ6fZsbvDU7nug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741185534; c=relaxed/simple;
	bh=sh/wmC14RR6SsMdcBchh+fWU7zB8bUGDKz7mfEmMVMs=;
	h=To:Subject:From:Message-Id:Date; b=ZY9dsLpuInDZZM57FaZcN1S9C8omoTf6/GCw7FdIvlBAjaCnFp40GJgQcxFTqxwcxIZ+bj3WPlULufpmW6d/7g8mw6l+K3rGdEWAZWvOxZwW9qmYe6sVQZHSx3w7HPLfmneTwG7Riel4foO0JRCcD/Duz1KXtaKVpSEJqoRmxNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVmnGR15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVmnGR15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E36C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741185533;
	bh=sh/wmC14RR6SsMdcBchh+fWU7zB8bUGDKz7mfEmMVMs=;
	h=To:Subject:From:Date:From;
	b=OVmnGR152oW4YlUWFE5UPp76SUrbO1Rcz84ZNyD0j31kmcsbFiNL7rZ/aaGmHm9J1
	 wrkBkieyzcE9G2bj9So3jS6Vz1e6nf5JNhSgkOLX2JvLUxqdMzjpYW/OE1PtbaezTP
	 daM4XpWwbvOzaHdITMXxsBtfWjFFwxX3pnfaqDKJQJVgRjiw8U8rX/WyzzE+vZEGqk
	 fah3mqhSt9m+sRggH6MVm+C+OC5hsdfO/YB/hcbQyNF+dMmdvGLM10p1UqEGvCcLQC
	 lDlHt0OorqEUG49WERJ0JZBRFYCjSzlXamY90ulktow2HSAJkO87DKR3b/YXi5w/J9
	 yBN/PU6Na0+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AC9C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174118553364.13789.13309199947085550362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e996ae5fa9936db256aef273226ba39af1f901de21bd4ed719ffe70b0ada462f
Date: Wed, 05 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741185533
