Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7420D381AEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781637394; cv=none; b=n7YjhOCAOSx0sHo2HJ8uOOzQM887Zl7NTsLc6LOHjvK+P2Hc3zbx6y2scZLwxF2yqHJ3IWCyyj80iMJlwcTdKan3nD82lb40JP7GkbhBSj+neo3Gs44RkUTeFmEkTtV4UY8S1q0u3uq53mt8a5VHBOGF8GSrhgGZhA+iwGjDCss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781637394; c=relaxed/simple;
	bh=/IKr5wfhJSk+RmpMObi91/TseN+1wB4xoZJ8TyUd4M0=;
	h=To:Subject:From:Message-Id:Date; b=kxals3ic0wkdkZuKAKF4XaQ7NAljtfP0s36eMGkIXfn3Kn2TY+pW9zrBqjVXydWSoIEnzW9BTVg4bQNHpcmuSuFZGxDAvvSlXfkRJhQpTA+oN6z6NIykuArNBHxXESblKsjCimgWjHwriyN07H87vcUuBKSCNYEuGfAE1MMJUfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpF3XLr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpF3XLr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2016C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781637393;
	bh=/IKr5wfhJSk+RmpMObi91/TseN+1wB4xoZJ8TyUd4M0=;
	h=To:Subject:From:Date:From;
	b=YpF3XLr0H80kkOh+5WjxS96oq7WDRdzO+JnYsmxio5g7SXFeHN552DVz3fMj2n3sz
	 qISKkd0wJfdvCQdZYajQNeOy+JiYs4OklXeJWFkwp2Km41XVyPi8OjlTCBv+vLKBkV
	 PsfMsGMR8tfAWB2uauSnJCO1zfPSaaKi2PiOwqHX7oE6NMOdVT/i57abqh41DUUPGx
	 Y1jYjgaZYQvCDayDVNez1kidgmDsRLJE9XTo0rUuk4DDNCPtFkqqtV41KbOWP3VRmU
	 U7nZePDlOlWWQHCyVEAJWkQ5xrKC+boaUeibaHQI70QqO7L+Ev14vfZt6mdpuHVSHL
	 eE+wu5VkpZGbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EA4CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163739373.29967.13769003185570174673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb8931f95fa2b5a33fc66000c40d5743aea6daa8b99c64b040abef1085946fd
Date: Tue, 16 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781637393
