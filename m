Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F9E17A2F6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771246494; cv=none; b=eHNVF4jrDwxMPTXU1u1N7xMMiAHxb4NHECuByZ42i6EKJtrrMYaApwT9shRNSz/u2/uPwcd7lzJGtiTjH4IjmWbW6vye0ZYhW4dg7CsrMPpWjoWifQTAZ0gs3H8ZO0AVy5y64FRQEmlOW/SJBuJPLMWh9Vmty0U1XJldfOW3IBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771246494; c=relaxed/simple;
	bh=DcbHV+btCGEEc3ID6i75p375avI4Mx7KIEB/vTSBsb4=;
	h=To:Subject:From:Message-Id:Date; b=hEi45CcdGCeOCdXvHD9THUqQ1FqcJNioi/hdn0LXIih9FLQYG8us+Dw89G8MRsPr6un9Fb/zP5hQjvYJxXFm280RHpqcbpQmlku+ijkesgrW7S3gvEEF5dnlX7U5qqt/T3TkLtTD9Wh4tOM1deEWQNDnxYqvxcjyKRI+JnBsuEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJd10RjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJd10RjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA726C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771246493;
	bh=DcbHV+btCGEEc3ID6i75p375avI4Mx7KIEB/vTSBsb4=;
	h=To:Subject:From:Date:From;
	b=vJd10RjZ0A/C6pJAVJVqn3O4OcWA74CAeMP/oLV0WyQt1t5L/VDZbSkqjx8q5cCVL
	 6dTmaGWqnuJpdB8LuYDGQZ9Pd5iFbgPY31kCznXvPJ+FTYqO8t0lxBce5ZHrpnzC2b
	 l9ExBL8Cyc/wxEkCQbqEbNk2QO51JVfzmesuq6t3GcG1GVP36FbHHm+kBRYBlCdSUj
	 AkNZRkSDcE2MUN9RAQJp2qDeOHR09FbP8GdRmwBYLFBw7bXKhRISRgPpZ7AL9Vg6fm
	 ZmacGdHemw85kf9sZ0prp3diMik8bs0mfFgSMSurg2NhdSTyQoyyITSslzNTKKVxCH
	 pMAuoY3JI4Q0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D20E7BDB8
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124649360.21820.947377060313612461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0885ee05d4d083582985f32062cc2be731b44caa678926116a508acbc891ea7d
Date: Mon, 16 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771246493
