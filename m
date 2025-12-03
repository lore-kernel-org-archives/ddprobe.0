Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DD43207
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764793374; cv=none; b=h9djInJubS0Mfx+Ab5uZuXOucEop2yjp8C8qQhfpNCj6CXzxHd7oarC9u4m/O0Q28qotXs8Cv+S0x8OzJlHN852JovpYQZten6EUVdYhMQiutXdU2/dgoNr5FlKWUjPSyhuAOzsbAyi77wTlWv7rUjQFv/gsbEUcO3i6xi/ZUmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764793374; c=relaxed/simple;
	bh=RR2ffJxMuAzRsHxzWh4BYCEu6Lrz0q3GOaXEXktqNAs=;
	h=To:Subject:From:Message-Id:Date; b=jYmqeEg4MMQWAw0QF0Y+PQ7frtjoG8NA0gB/GHn2XA2WpfqpuQW5S0bDBzWcoF5ZeI45wVOOHkxIy8EaJjBXyEbdFed2NmMrl7/BOwrm3HzxUsH/jSOstRJ9MFkfd8USJ4owv9U1iQCNyyVMLAr6HkSa53eWqcvqvwJ9FI2whQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y51vre5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y51vre5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2403C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764793373;
	bh=RR2ffJxMuAzRsHxzWh4BYCEu6Lrz0q3GOaXEXktqNAs=;
	h=To:Subject:From:Date:From;
	b=Y51vre5aZqIYy80dwFoM8PTG2Jnx8RlNZze3xrL5789UjlewOr//jyQWvV+kw/+Km
	 027JIM7jWOZak4Z24kQMDWbvyQbE5GiDYp3xO1XFRMK6Lxh+wChsFqUdb2e6S67rhd
	 6JmYaL29+5gBumXFgPeXClBmIeSgVb+8TYU0Swkv2cqIkOXYbo3dLKh7vbRH0SiXbj
	 3IS1wqznhvR0J5zKvosHa+ig4sRaoM5582yM/BOVb0E6zskQbqxiLIKWN22GOEKbXk
	 C48JjwNcbB7oBo1epXjmEANYOmnTdfNnwx2N7LypLluxKG0NXgFZ6+4AyLgbSgpkK+
	 b1Eq0LnothGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923BCD1BDD8
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479337358.31698.9312174686941409080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1039436b79bd0f68dd9edb9b42a642ceaf462ab09422530ee3a44529653cf55e
Date: Wed, 03 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764793373
