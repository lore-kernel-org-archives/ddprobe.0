Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F7937269A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776797854; cv=none; b=YO0awakQIfs/4Jg8j4HFtS8RFxnZwXqv/8YjLDWPmjlOTtt6HBhaJtoiCWIY6BEcAJIACOgRx/4QySEaMrCftbETddTC/d92HhJWsq6snn3uDG0aXcwyu3fKmYBBVbAak0t2yhjEGeeYEA2zBEKxSFi8rCIif5uz6DwAsKrAtlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776797854; c=relaxed/simple;
	bh=/ID7tBqS8/1So3I1Oi4qhKfs8LQM9cLETSZ08rRT4so=;
	h=To:Subject:From:Message-Id:Date; b=Mz5nHJPayi5Q17cXGgg7Lak0yQRr647dJLrE8XM4tIaZEo+HxTZ/a82P/zWLIkbLMegKh9XZdmgxF+kcDqYdGmqai6r50J9kzhGPbnat6r0VxYioorRHu6w5zd77BzTNZT0vzfTg4sc+85NUOyeyraZ4Sutu0QaEb1cfuGNp7Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IanW0lQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IanW0lQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ADCC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776797853;
	bh=/ID7tBqS8/1So3I1Oi4qhKfs8LQM9cLETSZ08rRT4so=;
	h=To:Subject:From:Date:From;
	b=IanW0lQ5hFfqhxaxd/dySDnm3lBF3hhdteZxr56oQXzS+4ZgFiy/9gJSXsZnwwjI2
	 9JFvJtZjwJy0e2Zrz0dV8sshp1iSOjpTWkBPQdyiJjZsG1keeCSitd3BBKdqzriSZ1
	 lqZBG16XKoiMC3436c5lLP7SL4TCBPV1AWnQclkD+ilFKqOxCpFI4RLYHkrVQlXWyY
	 +c/v3Qkv4yETXxxfY+wqxVwbSBpqJVbWF3Xv5Xj2L7qwzdhMyxe5WhG6ZrxSFZPNYq
	 uYuIFD6EA1bonjyCKbhsKvlA9/dC+jUmb8w18lAwbQeZnfITsikWlJNszaAoOMPku3
	 fSWFXp5zs0IZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD06EF94CA8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679785368.14804.12309283893520993425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bac52a038a744f9227712cafbdf3973bb9cbcdf773c5281c6460d155e59f895
Date: Tue, 21 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776797853
