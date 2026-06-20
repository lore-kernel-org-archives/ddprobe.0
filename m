Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5FC270EC1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781931394; cv=none; b=jSYkI6Dz3RYuWvlqj9FzMqKQjmg9WIznV6Jmm7qoKyiiJ2lfSE5p2MS6GmvDQDWq0IwTtD1DdH85N0DnqzL39Sg5/GdyCT2RNLU/P4UTklK5y6sWGJXnDhPPz0BzqIektCoMc5eMiln3CbyhDOu7Csyz3mR9eYkVjKUVUsJZxcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781931394; c=relaxed/simple;
	bh=30//arrJk22DeSZV8/YcyAWqlUz0Oxdme+E401QAxaI=;
	h=To:Subject:From:Message-Id:Date; b=r09Kcvb15RMqwBU8idkvmKvBUX67x0QAg9FZLUXlSMarhxMYAJC3kwlkKBatUHXEe35dmH5x6OwOy+IHWe7lbdSFQ0yEljU85fhl7HbJCkQIIKz5NphRrExqldBTOPsLBuIJOX9Hnq6wz3hoqrG9XirCdWPJbLFpR16Bsstu5F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDhLRW46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDhLRW46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02D67C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781931394;
	bh=30//arrJk22DeSZV8/YcyAWqlUz0Oxdme+E401QAxaI=;
	h=To:Subject:From:Date:From;
	b=GDhLRW468qgrBbip1TpZYx557Oni48MaAtebGxZ0D69N4MOg282S8FZz5Uye7zIwh
	 iXPg8kkzsQ/75R+8JyX9CeJXqVF66CKkGIbA2la0ZrLlFlo3a2nyzCUqT9Wb3qgLt1
	 VkBbN4aO6eta5i6/w6THTCM/S27v0LSY/8W/FLiwzfIJ44KjHkHzLHN1YApJk5hsJh
	 mrpXFv8agTqqNYmCYMQ+8RtIHm4CwGFJ2lY9hunPc0PQzk7x8AW9kEAVFUJ1845M9e
	 UIFjCMm3///oNt3ixTc/QqBG8Ok0TDktXHfO4TbtVbWcfkfit/nnz9H79W3qamzwpJ
	 NaYgVLi+BMFcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9435CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193139376.12957.13670913536424959447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b925fa27ac84b905a08740ba0c467e78bb8ff15d89edaa92eb5468023b049689
Date: Sat, 20 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781931393
