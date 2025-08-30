Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DCE2D29BF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756573794; cv=none; b=MvMTEQpIesZFu+eMk+FDKSIEiyKE0FwHDndrj95VwRrMsKXZKczA4sRIVKkIccIiH5gDEcyn6MoFPRu0Fp74CG0zkBnZXYJIX9vdR/etpAj69+A0Pjl2t0vJMiTUvO52Grw0wR3raCcaZn53HCNdkRV6bGyfyd39A7BT4gJ0yaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756573794; c=relaxed/simple;
	bh=BPJylmB3/5uxHA+JP+fWJp1ff/LISEmZltdLzKrQHGk=;
	h=To:Subject:From:Message-Id:Date; b=TdtfI5xGd0up9SXhqYbEOW4AdgFcOITLhrkpToceUXwtQfGStTstVTBpos2MW+RRPqqgtG5BG0YKlsqrp+v/0XkE9qw2SCDJJCYd07F/RRC9nbjQADhCB9YS9zUJFhPTvlV0eeb0S6YkXjBRGAXSUeE71ty+Cg/8TmbimHHJU80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdBRWRIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdBRWRIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA16C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756573793;
	bh=BPJylmB3/5uxHA+JP+fWJp1ff/LISEmZltdLzKrQHGk=;
	h=To:Subject:From:Date:From;
	b=ZdBRWRIpq2bFBi6wcc6hZo6W51WK/6oiQoUsozYXQM6tVkfJVHi+lIxt/YnaFi5C4
	 0VcLi76KeJp+naNAK9rfrE5a8d4fdxYEnBUDuUh6glFFE3D3Zr2jyHyXsL8BOoFNDL
	 znDfGMsBhIaHk9Ec7fLpuF5GLK4FqkWQtonuKhsa/ytFPCbyoIohbbBI1fFcJFo8Qd
	 SOiNAb/Gny5B/9JJjr5FDJMNa/LOzwfkFIYJrDZQFwjry+g54/Lp0y5JOgHm1rx7If
	 jQ/t4wP82AEewXjTrvs61rmXT91HPTGPZRHZ+GIY3AzOSZWgtOtGx17wBxGMga3+nY
	 HsOPXmXCFqoGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CECA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657379357.18262.11367029279920968043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e0136932f82d8656205bb51b61157ff808330f4947c673d1eb90882825c7f4
Date: Sat, 30 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756573793
