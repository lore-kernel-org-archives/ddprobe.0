Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1151FF7B3
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766333034; cv=none; b=RNY3U9Kz19S+G5h8OiUXG94FlV7bX/3kUEBGibhlAjjsURL3T7xyIw/pgk3eth3i5Vt6JeSQS32R4GcVhj5fdz4WE7uXx5ydNWu4kAZuWSKavs0Ad+AU66UYD40xAGYlg3YIHctzB2SlhLlc+vcK1DKTzx2WYK/oeNyUHYzvxXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766333034; c=relaxed/simple;
	bh=U1Kw1bBycceUWcHwMGpdsaznc7Eicnk+CfO0ze38vPc=;
	h=To:Subject:From:Message-Id:Date; b=bbx0Gp/fW1yzja8VzIQMxmBK5v+kJEhOXsf0Z+FxFOsC/Z2mumVpcxjwPj09azk3JmcNzE0NKoa25OC8b0GjgXU3z4RCG8MkpDwrMSYWTqjae0KNyMryqdl+VFJkpKSbLThi7TcumKVkvrSUfUIW/ErA/AntobJPZmYPSnuYrbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=We8bk58T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="We8bk58T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94EDC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766333033;
	bh=U1Kw1bBycceUWcHwMGpdsaznc7Eicnk+CfO0ze38vPc=;
	h=To:Subject:From:Date:From;
	b=We8bk58TlYYOK8iNIaElUVyvkLaRpwI025mUu3OC9RyUlmJN0dzswh26Z6qKN/oVu
	 tEYOdxFEtyFYlh0EwVaVJ/MEG3ENOLh834ol5FMyYNiHQwE1wQdXNOmNPkgEtQXMwf
	 1Driujx2+QycTlwPiCjepn2UBJpSXXupbP3NThpwG0LiAiRnC22JKe1ft0YraMe9pf
	 R2+gCZQL5v6kcqYUy6LSGtW4mKcaG0Lte2Ao2YfO30NFusexZ7pJmZ7RHqmZTjAugl
	 +d/Z/1Kcxm4tvZbZ6JIHoaWXZqxLClOpp/umDXhG/2Mrm8sYTWRtmyxZQhyM5S7ZOR
	 AivSaU4TWyKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93987E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633303358.15582.13567783405098053642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd637f71126ddb1bee4d7b735d1cd7614b01b4cc83bfe9ca021acdc4535fef8a
Date: Sun, 21 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766333033
