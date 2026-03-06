Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAE93ED5AC
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772834694; cv=none; b=kIQ/Cv/hod52FLnJrgOHuMOZmbKPXoKhMSUQb4DY9uHc9676v5VuTH0XKu0TEZeApDbkZpOw4AACRJsGiQNGB9In3uq3eSsuFmHxAoJGxctil0RwHiz4EddIAV9MxOX5wJ5HSuhxUYAgin1F2MnzRYFrPjgn3VOQneRUPmLbjQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772834694; c=relaxed/simple;
	bh=H6CxYaAA+uusKoGSZqp+G+t1v+fAHvLmVapTAgK0TOY=;
	h=To:Subject:From:Message-Id:Date; b=oK6VIxlol4gPvR/frl8yZq03Y7+wTvb0zhE+rxeB8LYXPVLNKpUCvTLe6wAlSa7hwXqwOZ+otu5JzRqxzJXg9Ux//QH3JYVacXilMWdlxUqMG3nwOgdwIcn7mX4m4Y1ckeq239l6jdprhcrf281vGSpCCqlpXNie6rBQIwUvVRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDh8O4uB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDh8O4uB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CADC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772834693;
	bh=H6CxYaAA+uusKoGSZqp+G+t1v+fAHvLmVapTAgK0TOY=;
	h=To:Subject:From:Date:From;
	b=FDh8O4uBgP/7X6R7lPHcNDFte0BWvfrDPwYuYxEh79yAJV9GJy4M3O6WQOTY2uTcU
	 bu2n+qg+JTwmUIdQA1DPGlt+0cCI9npm/iKuvW/UViNuvxwp9+AQZ+TTmxVZoNSWOu
	 boRIp5T1YNgpZuxQqvqv8hqJDYjL4oHJRr4fbGQdT1VTHo7oJFf0/P0Ci+gf0ae2pX
	 bcsaRMJ3nkS7o3FtqaTyl5FdIrfLGmOhf38K9fevXRIDWPhaTluAK9eaIU+gTXygbr
	 yY1kIQvxnR/2bazoYXNMOvKl8C0Y+DAvqhZDVhpJ6rw17uTkgSP3rEcsYVdr6sw4fM
	 +YlJ5NpO+INiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AB5FCC07D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283469366.28873.11214904722311476794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5450e033ba69daceb22bc5bd61c577c2a4f56b49d3abb47635b935e5e4237ea
Date: Fri, 06 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772834693
