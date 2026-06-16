Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EE8377563
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781572594; cv=none; b=Nt+rmUKpcGyr5cPgm+Z+ppucM1rS6pV7tyPCblHgUB7mh/HMDJoMCYzDH/qtqWVN6vm7vBfze69TuJo1ONUYZPkdXiNhLtEfE1FTV8UPAoo4o9PaFHJyw6kfdRhqYKl8Q9ubP50S/05rTEGPs25H0YDfABs4c8WeNfM+wlg62p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781572594; c=relaxed/simple;
	bh=tycLE4HKrvUb/yfSZDEKBz/o2g5BQu0z2DMVayNJ8VQ=;
	h=To:Subject:From:Message-Id:Date; b=ICEvYImOtnhHPmAI1+TT+gvLrD+Dyz8nDSMgGK3wuPNFpY1O0LkkT80+mHfzFGnLiY8LGCKSDm8Ja5zFqGbVphXzmy135eW+cpuV99r5Z7sJOc9HqVXlAwD1PYAEdMKljcTjOyJ0bc+r3EHDTdkourCdgwIqMDiEZ9o+OYKMCto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYrz9b/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYrz9b/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11546C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781572594;
	bh=tycLE4HKrvUb/yfSZDEKBz/o2g5BQu0z2DMVayNJ8VQ=;
	h=To:Subject:From:Date:From;
	b=DYrz9b/ReevAADB9v8P8o7Tn8dWr3Lj+emF2ApY+anTWQBK+0H054hNOuDN22tdx7
	 FvIAQeq6yWr0550BH7SOjJu/pbKdgpzhxvDzackZHBtnE2OTW+HIOR4avXHRDWcjKt
	 TonXpk0Ov3eyvxH0+J5y4ZWlSEEr5f40uZuDCzccaU7RwBFH6mXmo7QnVFN9idYfp/
	 xvZftuJUnADKBn/1p9DX2mm84OiCPpdoIYwrNRw5YVezGxdvr1QxmP1Xrp3I0kbNOe
	 w3fn3/0bDIhKlbQwNx52MrJWgAVnfHfGrW01Mkvv4S+8JDmROi6Ox2k7qavcgifrdt
	 UwbQL/PdZyjFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB811CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157259378.5342.7232513743941041728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6fcb4c8db5e5d9bdcc52f74666da94289d2235af8dc983494713223eb7d098
Date: Tue, 16 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781572593
