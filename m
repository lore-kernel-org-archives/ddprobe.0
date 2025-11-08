Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307D8253B58
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762583994; cv=none; b=eP2OZ42y/TJa+c3ecY2hnUyjeaDYMYvVYx1mjkhRLQpTwI9Dqk2vL96WRW5eykBRqJutYrzABnPUoxWy8Mrix2avPu0UwGUIHdDfdbAuJ2ztGOneo9qnCH+eQvrRbAOO8Qzi5tLlXqAnHtmiv55e5W5DXQtiTEsTt8A7WrUgm68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762583994; c=relaxed/simple;
	bh=KxE+trTkK9qhHAvjlXnyOtn0gTuUIp08NmceGAVS+Qs=;
	h=To:Subject:From:Message-Id:Date; b=ker7POf6rCQ3dMnSVgsPDjPZjIeUcI5AEG5tIDJx1EDjyxp7Ovc/M+wG226oV9XQz1o0J3Lc+3C8WRGHgZ2a4iqZrByo9y8tsWuQcecgirjWceLFonICGdnBL1WKu24g7Wfqms5H6mLKnTAjfvf2sUtHN79INNGyRLJg2zgFdtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul37k5ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul37k5ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4E0C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762583993;
	bh=KxE+trTkK9qhHAvjlXnyOtn0gTuUIp08NmceGAVS+Qs=;
	h=To:Subject:From:Date:From;
	b=Ul37k5ZJ5rZY+FbfC/RMFS19Z2MlyAdaDFOCDU/ApfbT2YloB1iv52eKQopaEh59j
	 mIfRv4YcR3hxdDA8Kd6Qj0JooX5x2oJ0yJikj5HrB1K2AbBGnsxwkMpjLZGEzK2X2P
	 31P7aNq055t+gXyt3lc1U401QS6UW0LCf0qgQqtScOmkYgarx50kkbcqOeIQsbPMeQ
	 +RqPeOhLyDnm8dTJukuFDRbSZ0pk04fI4UBLxtFRt6C9Kq+qTF+nXTPAdhHcwwS7Ig
	 C8+qlM5AYU6vzpjo4gvNrwgxXPWpGYGqwnhTSc4T7zuSn73367+kEcq1DpJAVJDfdb
	 jLZq2ZsCIAsTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA75CCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258399361.10903.11650994717139753800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd628a413329e6fa51245673ec626c06149a4d5704394e6dfbe150923d8327df
Date: Sat, 08 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762583993
