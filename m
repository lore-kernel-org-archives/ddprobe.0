Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E9F35957
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758753594; cv=none; b=HL6u1PAnM+Pq5reYTCbCashb6OJnugwDq0UsftMDTEpkgtVCTwT20tXxwQGRqq4o88D6UyCociNQIS4b90pYHrd9dvkEKYTEvab7XnWXGs9aDXYaAG/GTelPZOgSFLAHqbVOcV8MH8WmKPdjVCtHg45/aqmKTpAHyF6zTiHkhhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758753594; c=relaxed/simple;
	bh=4l3II4Ufslenwxk7ys/gfHnXSRmZXH2lK7yCvTiPGfI=;
	h=To:Subject:From:Message-Id:Date; b=Sn5z4yUcQWP4VOGhppZX3dWNTC9whIas1q9FFacmV6mz1Pv0srp5wxBl0yANeqy7tOhVu6qIwfxqA6YTLq+H3CGNUCS14PWM8L5CiI9ToebpalybWq82uNtlIaaDlUulAMJEdIP7QAtG0QFBVgkLe6EE7uq3fwFrIytOLCEp9M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt8rsb8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt8rsb8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC26C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758753593;
	bh=4l3II4Ufslenwxk7ys/gfHnXSRmZXH2lK7yCvTiPGfI=;
	h=To:Subject:From:Date:From;
	b=Xt8rsb8ZlZYvW+EBQt6YYSF94+9zRoaCFB6amxV2Hg0hCEFfMRXPtKMP9m/sW9imb
	 bRUWDv2EduYnsma2l3yYqhDZ6X0X53h1o3aSmHD0GvOZ7OOJ2TlWvhIpSXqgnEO2kU
	 2unKvr5BzTNpVzCCOQlnaU0jHCcq+VEAjCRX45LnmGCse1STTTB7iNMt2AadbPNS6N
	 vAlRXScPQs/uzyX1HhFG833YSsqSopjnAG0mGaebD4f94l4ogqgnwX9Z9zIHkj9m10
	 uZ+u4umumDuKVE7vBAvMThPKfLD0bEgfOjjpovvPqg3CKVzP5vPhqqZZZvVkpEteWA
	 axdeaoWTUN0Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AFBCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875359358.3890.16247241028754270553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86e1dbb0b73fac9c18eea7a9ae9720ffee9af526938aefa06afd54e2ac05996
Date: Wed, 24 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758753593
