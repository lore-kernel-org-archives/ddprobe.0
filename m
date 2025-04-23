Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320F752F88
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745435994; cv=none; b=KkhUHFU6XJBfZmaWOeGRDEBJwmZ27ZTRVD4pxpkPbYZFJ4qAeJY9m6dsLJNv+Pv6IB20LKC+9N6NFkkhTHah+BuZIuWduvtZtgWSkANxZkY5y+ZwSiySZZugo2QHKNsc3Y/dv6njyOb9BukCaNqA8h74igOAjR3SogaQAJR7RLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745435994; c=relaxed/simple;
	bh=VVQZ3Wp7hOqGj2T5AfPnOPTt9M2puC19mr0gVds+HrQ=;
	h=To:Subject:From:Message-Id:Date; b=pbWNmBk40+x+tKFTB8cafF+tXzP0x8BDaToN0TywiY/vpjy2ZaeksK1GO/XxVK8B5FoGt/TgegnchfBwHgKxBztiWBlBXmCFs4puKmjtQcwPpIBUdWCpsFOyt8OhzhXic6BzoWwqb4bGkveYdTPIGYggBgkH0YAOX57aA7c20b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmtmLh+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmtmLh+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE2C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745435993;
	bh=VVQZ3Wp7hOqGj2T5AfPnOPTt9M2puC19mr0gVds+HrQ=;
	h=To:Subject:From:Date:From;
	b=UmtmLh+aAONzJh1pcN0n4GI7ojrozn/Hu3O9yVtjAhyH31wj8N8j8Zd7wGVPXqj+H
	 98CRvAH1zh/CKgPj8A2ekA+qCiaIlkdDlBBLLOnfEUTWQl8EnrqZefd0J6nSFzo6Sn
	 d8Jfm2/oDzveKZGzmb/V9cGLDgAAGyojzPiJgpPDhoHgCjvOHz50C++JmGWwUUBz2A
	 CbkqAwLiZocLB1RIO09aac5yP4hq8sTn/UzHCEAADluxFEzS2a2VsPQ4Nf9SCUQoha
	 y4HQJRP5z/S5I1qodcWmk/G8O59YY0Wc2HjkNQc0c95B7wOCLoP4eTqoJVBEYfsxMH
	 x1RbOo+7r4zNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F5C369D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543599358.30752.7122569661655873068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cef48153ca5e96b27481f87f51c67b08bf4ce5209cf386fa78ac615145e92c
Date: Wed, 23 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745435993
