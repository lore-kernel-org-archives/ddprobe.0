Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E908E50A60
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712162297; cv=none; b=kjA9Rte/0hzACtYA8k4UxUKTWOdlxz5TSjTaK2U1Z/K3NFsf0bqoYoiSyDV4tzCnUgWig0d8tYspEvb1++rZfCIpmC7zhhLv1rzfjJIw8OWsSqWD5+wvcPnUMx4RasbQ3ZzJdHaFyhpMy4vM+jqtNeRYw+AzFq+ieW2LdlONKpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712162297; c=relaxed/simple;
	bh=KpmxkMkEj8Jfr5cgOmI3I+zMm55IJ81T7QQrJoHJhVU=;
	h=To:Subject:From:Message-Id:Date; b=NEmlD4PdkKVMiFjOXSCz6TJ3KulWi0hwAfb5VKk+U7/Ormc4F6lqkzoJgaOuZhfpm87K0L59y4usNT7q08e10gs0/0nyyC8MumlTGtDJ3HIRWQ0UGOY3gxFJ6vVQODhFbQtZOLJpFvIAfRpa89oVfshaWxa27JuiF+J7a3uPk8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HApU48LD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HApU48LD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93C8BC43394
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712162296;
	bh=KpmxkMkEj8Jfr5cgOmI3I+zMm55IJ81T7QQrJoHJhVU=;
	h=To:Subject:From:Date:From;
	b=HApU48LDRyF1bcGScyXoHCswFUxbBxW0KPobskHqmspZAAzMsOE1q/qRDhcmU1fKg
	 uIhVEPFa7gbuUaC6+ZCeebwRtSf0gdPo+EMoD4cLTKiybIvVRWkV2RYXUEq2xCHKbJ
	 1LEquamBhoTrNJwHqFcImNPRq7OLBnGE3Ux6XqRgVi77M3vW+YmBTXNPmMt0vaiQUC
	 +pCmtzGK18LJixwCBUgjQ6BW5lAABUHj3XiE5F+Nsi4YUdUUc/Ts/ktnrmgUpcPFt1
	 zNovfEMZw0vFOus+bSZYrGsSDgB+npQCy0VLJH5sOaPQc7d1JDvm9ndWocUvMReiH+
	 D3jaNE+AjVeSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE5DCD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171216229649.30813.18026463245010091126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd28679b9958b8f0aa0862f515837b1fed5bc10984a40412c1060b437eece026
Date: Wed, 03 Apr 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712162296
