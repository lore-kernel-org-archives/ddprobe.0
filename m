Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3350B1373
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764477774; cv=none; b=WJ0kJJ1eitHnjsK1otnKATjJ5JMnmd/ZzuVlIlkYhOOefujh6ZivNU1G95qr696vv8ZlRZZKpFRGrWySNqo8t+DZtA791pXQKUjgSz6Vb6I8CUbGtp4L6AgleHOW2WWDGnAmazLeiK+tTu1s6RWf+v5cw9t4b1TGwhrcu7CPkvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764477774; c=relaxed/simple;
	bh=mJxOdoH8UbgLz/IB8aqQ3WJUc3AG/IZRdk/+Qj8bKXo=;
	h=To:Subject:From:Message-Id:Date; b=JLcn0Bgn6XCQ2kKehb8WEa0e4LTwxXv9xfgXAk1SNVdlS1ou3WQlj7TsHIkwe6P+TwfdbeRwoKCVk4LIuWQszRLvZ7T9xfYmOyd4MLLdOHPczTXwgkIBoC6xJENzKogqO5rKnolDs6IG6BcdrPTdNcylv+V+swnkn0X4Tq6rXBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT4N09Ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT4N09Ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A737FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764477773;
	bh=mJxOdoH8UbgLz/IB8aqQ3WJUc3AG/IZRdk/+Qj8bKXo=;
	h=To:Subject:From:Date:From;
	b=rT4N09MsU5mtikSnKY0EMPYKakP87gRuuYmImUjI9na7ieIRFxgZ+pMnWxbBvrhJr
	 oYuquaepNsv8+qDZ/LSJYKieStVoPIcl/8POdRSeto4tNkc/MXKWJoQz3ETmhbk5qM
	 50Jjp2e6SdCW4e+grFv+C6M38Slscu8pbbhhP1ZrbT7zV4+p7QwNosHZ1FYLZXEkQD
	 UqrVIrc4mO0gckmOLdLJgq9/cAeFWBLStlyxGqR8u7EgNvIssTFopIVzH+GAeyFrQB
	 c2VY4n6G8siDL9j3Gw9Q/FIRGwwBnDncGKkGs2YCJlU7H1KdUxNGZSR6qoQKpSN2Y9
	 mF/QsdyRXkS1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93164CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447777358.22995.5606944679561649683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c395fa7cd7854458ae49d350b96929bc127a803b5b3dd65421c3ba518904af8a
Date: Sun, 30 Nov 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764477773
