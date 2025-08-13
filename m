Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D36B2EA743
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755122995; cv=none; b=enF1erhjOafvlUl8/zYIX64OdeNrxXl3JlQPonnkMIYCbYjlGyZJ1A7k83jLEYMzC1AjxaE2ujJYIX5iVuSHFb28ETDXlwQAWCGpS20Kn+H9qSSRtPtpJIdlS5OBrT/WuZYQ93sERWTI8Uu/CbucLvSlGQm+ljt49rGLxbN/OFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755122995; c=relaxed/simple;
	bh=HK2mvFq/Zd8jWVxvn0X2HvpM+9lBiiIaVfKlDFYNo5E=;
	h=To:Subject:From:Message-Id:Date; b=uAOmqVjgLjk/i7zrONHRKWMujAXo+vjPsVFlGWlfpc1HGhPRoXc5MgjBDcYGrfYunPlvlPG9Mhxxz+C9+oQD6oaTICPkFyPZ9q5kyP1kCFsqjoqCAX7vo4Yso7b2LhQcKLbI1LrjJn5z5vtieV6y8Yc7FhO6gnKVVH9O/H/VQmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+O9fV+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+O9fV+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755122993;
	bh=HK2mvFq/Zd8jWVxvn0X2HvpM+9lBiiIaVfKlDFYNo5E=;
	h=To:Subject:From:Date:From;
	b=o+O9fV+MLtI8+PQilt07Dj9ynzuUvQCMXWUZXe4A0GXPfEk5/2rLsPuvwvV59p8sf
	 WaTEfkcPzJbgqLIT5AXaf3s+29GbUtRf4eLHPYAVcD0AhnFvAO1Nx8Can+75yacL9I
	 5rNyKvQOXgK7l9cxsbdAo0fnjy1mufWrPff0PeXv96c9F4IC+T9TwJZyB8oxMlz6Ot
	 sT0ZMSQyUk7e9HKbAsq7zaef3x4eNTCVVi78Ol+NwjN8lBovraI3pZ9qMTIG5uxgo6
	 OsTuts//wPnLql29vYhj2J9Lj10TNmOL0KZUVH2BEOy6TookwnQF8C0Lt+ke4lhFog
	 AnXmQxscdARfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF11C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512299357.1323.17243685430987010067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449aab3ed08b6663d541167ea0f82f1ff36f787da716cf9758532d62f555b172
Date: Wed, 13 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755122993
