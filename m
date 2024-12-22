Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB3F748D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734896754; cv=none; b=K+wb31gfakL2DZxkyKHcsBxYsRwfSp1V4glUP88d3yHN+ywY3ykCYDsYARZoaCLmv7zcyvdMr/DwgiL3ADOZojZMvqIGYET9mwTlCzU0rGlDnbnUectQ4tUiO/tX0K4rSO8QjTsgrFMgndP24qAx//P7ZOxJUoLmWpT5ruIa+y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734896754; c=relaxed/simple;
	bh=5x3xvvqw40GDxpY/fKVaOCfdxg8RBKfS2DiSZRg9EVg=;
	h=To:Subject:From:Message-Id:Date; b=VztkCY+KunnjQTv2T2Twk7lEpuqOlh+SXuwhkTYTN5xY4G3VKEaLqS2zEWjpOcsZzHYp85B63mcJarMCJUNOz0bOHSZpbbj36+HWokq48UD3sHuzgQFyNiNEV0l41EfpSohxiIw5H3Y4FPfprbYeR3WuJmYa0mYeHJqMQjNlkD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pp0GlZsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pp0GlZsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB117C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734896753;
	bh=5x3xvvqw40GDxpY/fKVaOCfdxg8RBKfS2DiSZRg9EVg=;
	h=To:Subject:From:Date:From;
	b=Pp0GlZsft0jU7lcddGa784E+KQG1Ze1hqAsFuCt+Dxol5ZJ1bIoHcgXUEdcfycK08
	 Y/j7oSatSgBQUWeX4m25h3Xam72zuywRVcOq90G95dEjA+j/TjQNbMLCrGIboo0iqd
	 Pf9ZhAnjfHoxcjRlXPwfgnCDr9uqNiF1lXEAgyMlc1fVH0rQyBCrZYgWpeg2SZCDDW
	 dJFPGGzq4AsPGWy4/lJ8zCQnpIng1YA9gDrswhKQxwiAWT/issP9vodl7A5PVpQzVJ
	 fT+/WMFP78KAnW3xJDstu9WHfkNRdSU/rFg9LIoZ6BeeSzdj+rO36LN+XyI952CbTi
	 4kKe67NzrKf1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E7E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489675358.23782.8421042858241732944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49496c1aefe1370570956f36b95830ef9ac426ad210b0d6b723dd213ee465a1a
Date: Sun, 22 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734896753
