Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BE4175AA
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720194323; cv=none; b=lyL8WsS1gtct01x6Yg2Wa/8a90J9Buyz2/fq0LmonWxhPCBrTifPnpjtEBphqsLFwB1ACb2IaNqQLxUm06BUsECkWGJ1segA8zKyzyYtV3RNL7QvN8yE4b/pmD+wNJq5ZhxtsQtJ/qnDGuKSaaNg7qovbhrtURFdLYUUJ1f0Q9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720194323; c=relaxed/simple;
	bh=JIH08W+keA/PO4Xsh8YSmYqaxCP7N7I/LvKNoO5ZPHo=;
	h=To:Subject:From:Message-Id:Date; b=pQoOpaUppEirkyco1gO5L9LMCAxns4Q2EjAfxC92nkWEL5rAMa1VD+z7xsvZydpLiDikhg8G4wgipKaHLET1zCQpkNjS8wbmNZx64eiSzrkLEaqH+7XL/13p+m7WvXyUMItdYdW9lp82CK+WAYf3utleLZL13LWPgNQktRdDVco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTe6vGxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTe6vGxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79D0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720194322;
	bh=JIH08W+keA/PO4Xsh8YSmYqaxCP7N7I/LvKNoO5ZPHo=;
	h=To:Subject:From:Date:From;
	b=nTe6vGxEADgKg0YWnHhsb8m9OaStc6F4kh4IQQUxeVd7iqGYQvOJsFvT8x7+uAJpX
	 zyCugnptgRdYxJD6vjM6hr8rrjJ4s1IKXoFIWZ8GW9+kIE/xmW9Alp49aDZRRxDJcv
	 FnnkemFR0WOvb8oQOlgVjel80KdcA4Y5CVUWQu3uJS/+VQkRtb9wMmNOnoaUpXMXu4
	 WobW4N2EdOstgeD5W8P3Hm9J+OsieEYmJdaVn9b2Cc4n0OGcUX5A2iuKTzLYYHwiw1
	 IQRFEptz92O/aLtUu7JunDyEzCNf/1ScEFE+gLMy8InAXGnN5LMjdlUuJP6KX53kfQ
	 jTXOXD72MXoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF01C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019432283.14796.9859860978017392259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d0160936c165035ec12419af069b279dafab02cb965c1f703d4793bcd23873
Date: Fri, 05 Jul 2024 15:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720194322
