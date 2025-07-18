Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24333C2C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752876594; cv=none; b=BJ4qKpmox07yaLCggdS2X2mxioTCrip/5NmsM5gZFqDmfu/1sO5kCLQoNwzw4rx1nURAhFdZfsnqSJ6aw4HVKXCuX84/45Ug9kSPSFdSBEb7qiMuwRLJyURPAGDxvKCNWa/zJACudwJOpo4kqJmYwNwR8EEuR4zEUbJJvFVAnz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752876594; c=relaxed/simple;
	bh=Kt4mpFE9MozKo+/KroSo0KxSFjmxqppfGS0hUSFVMEk=;
	h=To:Subject:From:Message-Id:Date; b=oWYgXKLNUui//O9+jmImdjVWHq/cG7t91ZWD5/sEopkmcuRFQXZQCmpXHQKLWmhzPGuz5CzaFtN6Oe2xT4xWTkOZ6sv1lkudIlyl6uGmwSb6Uhcbl2r5bYMYL+muE0yo10cOwnsMuTQ2tz/K32j7sDqvLsMSsbUEpassdKXvXnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iErsrE+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iErsrE+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0046C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752876593;
	bh=Kt4mpFE9MozKo+/KroSo0KxSFjmxqppfGS0hUSFVMEk=;
	h=To:Subject:From:Date:From;
	b=iErsrE+oyEo7/eDDMdbm65zGcVQ2zhIf+wJDV+6FePHpJy1ge2A2vncmakGxJGnUb
	 bj2gE6wB0EPyvN8T4pN5Lw9a0VV3C7gldmS+63h/qlsxlFb+UNJmwI3yFAjjI1tFz8
	 caZNCgZNo/WAN+3IlA70dK2CCXlsNWx61ZMiSPzi56/vANY58F/8jNAyh9t9z7/Lo1
	 c2sQgy3eqmQTcT0qo60hyo0fb6quR8WWA9h2eHag9XUIXMYIRDJeGHuSFPqv3tKcWa
	 T6kwuuVcj7sQtav4S3+GFcyI0syatKz6/BfL8NbkCOd/PTsOzmFTzFn/xjeHRisB06
	 eoh9NH6F+rVmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A7C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287659358.10890.4282907574068673469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e8d0789cd3f635f39af1fd4aaf0ba6ff453aef0872d28cebb6519b0c89c796
Date: Fri, 18 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752876593
