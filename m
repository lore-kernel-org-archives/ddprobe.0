Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329D615D1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737842754; cv=none; b=M1sYaoNKIUBK0Jc2wlxz1oGvGpfBlPc3qNxLcZ/cEldKvUbKg+bWCM01xC7oTFsMLVej/B0uIfdI/4dIcUKWHCVqXOYY/R+9kU5N8MjQJUIlU+OhAMeoLa364paJRx2KoNB2Oe7RGmgQc76B5aYZNAk7+8ZnLrZxBChjVRsIHho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737842754; c=relaxed/simple;
	bh=mN1bo4A5JnoFv/gVeCIHeQXs8isu94VAcCVUUEarrbU=;
	h=To:Subject:From:Message-Id:Date; b=JA+itmnm5uZKic50LcWOHU85Jvo9k1xp4Bq1KABzibyPbmYnU/y7dpTSDcYD8T9NNw+F+ADGLRV6kGSMLoLZ0WS6riBNOhCXUDk5ku7Hq0CGCeCbBODpd3HDWpxsJspxF1DCtotEIbyuseoOqAEgA6efFwOvzX7SGqqtUZdS6cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5V+GSpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5V+GSpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8FAC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737842753;
	bh=mN1bo4A5JnoFv/gVeCIHeQXs8isu94VAcCVUUEarrbU=;
	h=To:Subject:From:Date:From;
	b=Q5V+GSpz5TdPAONHLYe2PzkwFQSlf6IIA4z0pS4PLNO2ijLMKrNEGWmFlLLsJdmt9
	 dBgtUMO+a5FpY5yKUuELWZsP0qo8yrx5SG9yKOAX84BILKynqoeFG64VhOiYhnKAbY
	 RmGhFVaHwcjTtPhaILANpeI9fi0IyFgkpUdD6wWd+fJqHmKtxF1c0WBXUH4qciKZ9A
	 nMmtDMxWB3H+xiRaiK51s1xuse3mXLdPOAZmx9VWGGF8WVh6eDree4ZQPUjtDAD3G/
	 CWWO75NN6c3V6IjfLqNXIdsvAjKzOhnIGav+um5Hlql2o/2nA23ugGOiBnBNEBDGDH
	 JHSXtK94Fkxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA5C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784275358.4844.2740652069642301963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d9e29d37cbb6f121cd09dd9fdc7aa76b5fa9a20cc0c39e8dbfee8df4848998
Date: Sat, 25 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737842753
