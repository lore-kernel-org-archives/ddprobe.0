Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DAF1465A1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719566663; cv=none; b=Y/mHNpSrxwj48B6SbSG7KAYiQpqn3+MXSBK+UbXqXThqvDiYEUWwoqW5YG5B6zA4/XPSwLlq1OKlcPQhYAYmwLk9jf4I5/wYp301iBe8jaztR/UcSMZyoYKDWyx+lKpMTSnCkNjXfPjl3Et4zaeSUn/q99H2rsOk2LsbDdr1C/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719566663; c=relaxed/simple;
	bh=sWXtKlXlXj4lrbrxEqwEKd0+jYWt4MPU2Row3ru+i4U=;
	h=To:Subject:From:Message-Id:Date; b=toljQT4MWw9oTD5kFijRLPPWkuxWkflXHu0eq7vx16DXa4ocQeyYfrS0UJutHQq4VlNKMzLKkboSPLIE3jdNtc3CuPGEj4WAvATrxf4ROyZU4t0edNsUJjCwGKD8+y4YCjx6xYXdY9IM+YdjuGWtZf2PSSMqlM97W/MFNw6mZQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiBbf8YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiBbf8YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D0DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719566662;
	bh=sWXtKlXlXj4lrbrxEqwEKd0+jYWt4MPU2Row3ru+i4U=;
	h=To:Subject:From:Date:From;
	b=aiBbf8YPeSYlBSTY2GfJLYLZa1wilhhR2Nnccr04QBiXYw0LlTAKXmtHnI1SB8USQ
	 TZRUjHspQ/jcQDDAtoHz7k/5s2c2uIwt4NQ3KVziPGwe+ZPZI9o8oIr05c7/V2F+pS
	 FLfoMpI16eDd4xgl0YSKyjcV1QSxx7ER+sXa64DoBds0dDmQQmbEPHYypmrI+M3l3i
	 DV00UuhlTyvCRfZP/GVD5HNNsGhFGssmlMEq7n4+1V4ucDjKELDo6TUwXkkhrpkfj2
	 J7QDUJNwFqnnVO4f4g6KgB+T1MsV9Z8xJ9odvQyTEhfjHbBAUE+dz+6FQydC/ju9zB
	 nLgU35tLlKueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAF0C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956666277.8426.874916910202505730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc358cac237410055e41390cf5aab463aa27ece862332daeee15af89f2d81a9
Date: Fri, 28 Jun 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719566662
