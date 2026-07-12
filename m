Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389CD3033F8
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783877314; cv=none; b=N76xrM2+UD0EfHO959UsLyW00ogRbIjikCNm5hRTl9FwXhpNnnP+cdJFC0jzZxO1LSAv1YLrl5uukjzTIVCXYUMoQ+LjU2DWoo59xFxKs+DOVV7hjpwwEpaDTzUWGHNzjSlvNVqv/9omGKodM7izzONQ1fB4jxX+tLHbL+9rFuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783877314; c=relaxed/simple;
	bh=RjbnjG7DI17BBZ698RxRmyIhunRfww5TcxEFNPJR36k=;
	h=To:Subject:From:Message-Id:Date; b=IG4HDjIcLo9QldpT24U8u/BAcRB/YVCeKpf/0sXRnv6qGpbMga5/bBEfeJq/8JSCar3PumldN4BiIM6pnMtgAJFqnsy0BzuSbwQkoxzEyg2P0+cDxs198Idr5SJDoWBy6yHZ5FoSblh7tNYV7iRO5TNw6jt1EfxSLX+Pja7DYyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AomnKp9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AomnKp9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF75CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783877313;
	bh=RjbnjG7DI17BBZ698RxRmyIhunRfww5TcxEFNPJR36k=;
	h=To:Subject:From:Date:From;
	b=AomnKp9nzJnOYqPpda7Xpsl+CIAqx5u3Y3hXdLLAf2gaXN9m4efGeUi8VfItpp3qw
	 i98cV51cZEhYskaijeirIHOjq0SHzv36zmIqmO3ojNVbqkSbDx/ZeeZOz3UhLWWhro
	 e1wxJVlaOpWdQv1x7UkckCy2/gV29wAbTAAX1O0VCuPlzyhfIkYIKzQpRAE/kLw2sw
	 QJHDV0SRvI9dE0yP9WDXkPKwu6RnPiRX9EhEkGfdK/kE5w0CXa+iabTQUFs7oZ5+c5
	 P2DXVRP9WFG8aw8gAsvXP1BSdwJjmXwDJlqyUb22+dxmbnpDItUgaGNH3SoxTJKmue
	 wVUgAs7bh4uLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB680C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387731368.21043.12687685514350310289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b51cf7db216bbfa601e5678e0f299d0a89f4fde642329644b9e9e209543d0cb
Date: Sun, 12 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783877313
