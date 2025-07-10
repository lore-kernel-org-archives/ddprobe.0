Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF0E21C186
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752151194; cv=none; b=TlstiP4UbSLfcqaOz/4WfmgEDcn3G2q6cq1UDzsmbyxJAUxnGQK8Pisn8K9AwfuVgiZ1o5nlVTXLO9Ym3f5FdzCJBKytIYK5a90ghw5K16uzXBdK0fhyVTPhxYdkLgSb5QaGvrPwxqb+C0nzOcJiW5/kDU95ty0v6CqiD577REQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752151194; c=relaxed/simple;
	bh=LPZnPTYBppHLJVPItUOXsR+MnRcd6vRF84EBEXKxb34=;
	h=To:Subject:From:Message-Id:Date; b=Z04ngBU1v5SIQnB/HHAACtXGRwxUImtj8QZS/DTqNZtJHzFPgHssdJj8tqXyEnpGon23l0cqGQJ/1n3tZhjWXtZ/7ytNPAOROc73vV30RUTJ8Erg3tzeOV5tn8FKz8AcgLfhOWFpNgpLYvbBbgIYw+neT7O2aZ+SjOs2T/a1gNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgGvMnGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgGvMnGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752151193;
	bh=LPZnPTYBppHLJVPItUOXsR+MnRcd6vRF84EBEXKxb34=;
	h=To:Subject:From:Date:From;
	b=PgGvMnGydQrrp1huNsvJUiYx1skTq1wO6zEudgrcLjHRp+HRMCp6K2u8qJ6oDnXxI
	 95040IeovAxCSpRSBT50jkN1ijftMtN0K6AoFxcgBW4H/yg0GmYS8KvHAh3N/8s6Sv
	 SjGB5yhEU4UbjWxhVRumMHKQvLNtwL5LoxTD+lDi4GfM1NoLeZWg8Y2JfJmp7oG+8K
	 wGRD39l5g2NDe8wGIQfb9tF23IEy/6RhhTOJqkZQ3KNJCWlzrdGY6F2lvSPyX/uism
	 0rIt8//OFzGGd4amTujlw9s0JDtE0IyVXBW7Q+AsPe7Pk53a+2voMrNWEkgrOMRZGq
	 21qy/+j8ByaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BC6C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215119361.24412.1885069974432836869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139bf3f0be5acddce535a90b1795274371bed4461864dffcd4653d47344f95b5
Date: Thu, 10 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752151193
