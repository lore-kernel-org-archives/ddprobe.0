Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446077E792
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786320634; cv=none; b=bLbAXA79m0hyCFVQWsdLn/ne0AtoccMLNPpp2QKGBS8tZmbu4g0KiIZP0aZlqNIvXIFnof/nZZKy0KjKBcN2ItBEwdZaCW3ZQACdsEN3mSOM293skqQC+UNVGX5VXzqNsp526ONynDHG27d9V/pPyNC7aZmP3Mu259TvCNZeeyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786320634; c=relaxed/simple;
	bh=MAAIwP+5uPEfvCzHjhl0wHbBVOmCXaXUYt7tHlC4dUc=;
	h=To:Subject:From:Message-Id:Date; b=g5OOBFnC5hlcJxuLlGn3WqTBKPw8LfgwyAEGxGOp3McKQ8S7QfhISVaarmnbWgEiJt07Lv8FE/KRHFh0/UcozlbIMH9sQMgPphT71nO12yVDC3Mg67F4G6pVFboMcJlTUM7Xc5Sn7Cx0bX3r1bgK7h0dQaiJjFeG8WKoET0Z5q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpHtf55d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpHtf55d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BE9C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786320633;
	bh=MAAIwP+5uPEfvCzHjhl0wHbBVOmCXaXUYt7tHlC4dUc=;
	h=To:Subject:From:Date:From;
	b=gpHtf55dzq4gnD+7BzfTNTNGD0hgkU6Yv/eIvNR8NMBIopAmeVipjbsJue1ez9bxJ
	 vCSI0tb+JuN9j5LsNGNpTcJqAxDMda6sPqYiU2qpssCRbLnk+VdKBhay7QewufiicE
	 79XnJ7UaHUEq+I3jCcNEgG6HdtRZGEGEIopn0OZBK+MobtTpDkVY+QQEghF5p5JEkC
	 bK+m+q5bykuH7o6xOmZCTmwJNRapaqB08sOuE7Wx545+6pY6PIxAXJDv4yQ09K3KRB
	 U3uWmG3pSJUurKZsE0CQyQnbd3JbaYIkmJ0xb0kx3OxzJzE7FbIa2DZt47S4PWHUyn
	 9vChRxXBdkuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEABFC5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632063369.32499.6825455445951782423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a54454475629401ebc25677068e475287f909a22195a4614d222a6a8ba2ff5
Date: Mon, 10 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786320633
