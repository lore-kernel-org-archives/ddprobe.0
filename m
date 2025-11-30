Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2921D14F70
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764510774; cv=none; b=RfTfGBR4/CoXLWxrma5DVL/p6rCW3Gzv+XIViMIimn4L1C42DkZOcpQTd73gsRIJ3/EYyeBDLy22geq5WranQyKO9IOhgG0DAH3lE8kkEpTkkWknrNxIYhHy5owxDCqmDei8SwzaeFqLssKSvtFhvmqIJUkmVncgcVY9hYQ1wIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764510774; c=relaxed/simple;
	bh=j+b+w9o3aNewu5R3iTV5CS52QbD9rdVlc0FoHVpe3bw=;
	h=To:Subject:From:Message-Id:Date; b=Gjy85HN3l7gHfN90MLA+rNMWKoEbgBQK/uLc7x296dRD5aUPVMQMG7zBY4GsNkUfDI1EjAo3qbPJwLTPvcDUyGk2Zq8SbdxFV7Fyhhf06g9I5/d3Ao9Oi0mZ4+1oqtjX3NxdWtG76AsMVIkh0g/+ySi/fOWscSy7apYrw1/FLmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qg3eGImJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qg3eGImJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4F4C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764510773;
	bh=j+b+w9o3aNewu5R3iTV5CS52QbD9rdVlc0FoHVpe3bw=;
	h=To:Subject:From:Date:From;
	b=qg3eGImJA6OcDyEYkV0TQJhUzC1vXwQeEVISV8NfydamQRjaEbQLMB5aNiMYlEJNC
	 QGMKaq3r86JW0qo1cD9lcYCfeLwjCbxQmNiW2/ZmXZhN127cWjc3HUjWLic9d4rQdA
	 f0ZEkBx0IsmwzqRCtBBf0eyzRv9KeOy+zN0x0PrlQ0vbFx6QeyDBUus6/bo4rMsh0C
	 aYBYPvy1CgjVhqG2rpOEKBYDYfBL6Z+0i+LXPx5sJFl741BTFWtIa2EeonibneWpmJ
	 cyqPocrzBYfK+uPANPNC8XR40TAl0ChEkOw1J1jUdFNJRT2NVgIX9D6LdEeHNd14OJ
	 6mzeJxJyvjgQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976C5D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451077358.16318.11011718409469795280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710f6f901a4372319ad69348ebf7d923d1a7f09c9920d98d6bbbeb8473248f06
Date: Sun, 30 Nov 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764510773
