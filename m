Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C1E17BA5
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738422354; cv=none; b=dUvnDQ1GaDa4vq8smkAW44Ekwa8P54d8X9gvrKbIvYyUcyS35fNxRaYWbONnNq0L3aLQSYIrzvZmuVdCYiBFOXfuGHmKC11maNFvCd/5nR/JvMV+tEr9AaTpkRytfHXcn53KQtS1gJZSelSeXCJvsvZJXYM3y+jXf/+LY9Rzzdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738422354; c=relaxed/simple;
	bh=Bo0msOo861ii+0cWRMM0FYvK8g4tbaqUNZ0LHLkBqls=;
	h=To:Subject:From:Message-Id:Date; b=ZogEPx+4Yv9bKtjYkHcC/zXxCMNu5zFbxeqcgExTTHxFMbpVMIifJOt3A59n4869Wi3FPkd6BZsGNqC7+CDbdUatHFJdqGYe371uZfGLRwTJfWUkN0S3EzDiYtkYmTK3XFQU1HnVfa08WHb9vo1Af/kPmNcIbO03kMuyvzwQyAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qokf6nqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qokf6nqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FF7C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738422353;
	bh=Bo0msOo861ii+0cWRMM0FYvK8g4tbaqUNZ0LHLkBqls=;
	h=To:Subject:From:Date:From;
	b=Qokf6nqIe8tIT25MMY1ah5dKC0srNVm9OpjdRU1oL0kz52aWgUFPsEavac4EVWRwE
	 VUB5uSQo50jjxq6lzhkGqydrLgpmQfF9EVo+orzpLTqTNeZ+4YuQJaGoMcTMUr0n0x
	 Q8RG2MyD8Q8RpEdXGxZhz85MatxdAnJToVBjb2eiq8YtTF3Y+FyVDKYUGwlkXFDYfr
	 edxcafujOetokgsy4b/VnIDijP9dAha56n6raCjoEAugwJA8My2RnnGktu0QeRGVcX
	 j6mXvS/JbJ88i1Mvm4/HIGHmZzww8NhugSZBUrE233OHm47llHL7Yu+0nA6a0rlUDR
	 E5uuXvBam/1/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4B7C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842235361.8802.5415345590591570847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb609575a88c9e411fe84da192adbd6102e745dbbb98c04ee9b95a077b37575
Date: Sat, 01 Feb 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738422353
