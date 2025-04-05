Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B261991CF
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743883794; cv=none; b=U11uYEzeQ2GQc5M+G0jxP43Iokips3BBEXVZma7wEjteoObrGLQQx1rJGlFPaJUU1lzD0/K52n7EoZBVC6U1V9wxzDXC9pUKcl1GJ8aYvKO7f2zqx8YmWoRLb+QtICBNBVLH7IlJVCMMHlXiIVBhTcxOs4pwog0GommmcSlUWqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743883794; c=relaxed/simple;
	bh=KYJLGFzo1JV1fmq6F3+kzbD4OBBvZ363KvsXLqZkFCQ=;
	h=To:Subject:From:Message-Id:Date; b=CXB41UMisjb48KgPzLIHZ8cwXr7IMbXmQbmqPGB+CzVcixCdIDqBx8ko/EXBNaX9PzxJ41bJq0J1FwIvwKDpOFNpyXzz1zWUWCHK9KFkbJNwK0WS3Ntxz5c6rzSzp9YRuHWLDNzhDbalMpk8qErvvi1bjcY9rRQBmrj7f757z8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/MrJirp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/MrJirp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA3CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743883793;
	bh=KYJLGFzo1JV1fmq6F3+kzbD4OBBvZ363KvsXLqZkFCQ=;
	h=To:Subject:From:Date:From;
	b=p/MrJirpqoYLlBNroVodBAFCpJ3J/DMBAwG9Fv9h8izlsbl503uCYoWmOj3Xfzqxi
	 yeCxzmIapdwyCCCacGR+1NyQyScdJCNyyT/dQPCv/9ZugF2DEMga6s13yKAt0ao15I
	 7nMu+VdwjRTAks5TO2y4Y71vmZWUUTeQOxA/JHp2OtnIeJoaCxblUD0OzGUMVStrlN
	 lFDOHEavX+dKDkhY6CUhzB5Ur5lA9CJV0CZdC4tVfknbbOxCRLX7j9dAfUEhwz+TTD
	 Fltdf8CyH76gDRj66z4qhlb4mNOz7mM0BJ4BLipgYc7aUwKZyYPZG4IQKvxi5CILsi
	 0JYM9aLWWUXbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA8EC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388379362.6588.16981477615620442067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832b386d72aeaeffea94c63d7aff60cf349ca73cdf11453d744dc605503bb608
Date: Sat, 05 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743883793
