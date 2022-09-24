Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF22A23B8
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B16C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664039453;
	bh=SBrl+Flob4kpyA65OhFYsM9PsgHh4h/LdrazRNf8crk=;
	h=To:Subject:From:Date:From;
	b=r9lfE3R4rNJrS624p9jN/DyX2xsP/nsDd9TRIgUpJIt2t4rbvCOT8c6LP0YGWU+NQ
	 bKk9b7nJ3MjgaciabjJrdNT9EX9a/5/c7YuRoa0uSjAkNNl4ZoCZzSUJFds0c2P+5I
	 /QKWgoerVHsi8uRAkHHym8DsNEbSOu2P6jw9z7OlpF0cdmzpN9CYdWf6r/5xBBrFw4
	 QqV4TX6JwHvJEJXPa5ssBhC3rKc1N0qWw8QcOeKwCa2h42jF0pVr+aAKAGipXoAyQ9
	 +RmPvN8qFg0q+muN/LZhvvFR6vUNQXSOoMUC0/vhjl297Rwdt0YgIwucrJpmsrXTFw
	 6klo5ukgI+JdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569ACC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166403945334.29733.8884093784112147647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362df820975ffdf6d7e9b2a271cfa79ea74a3403b92d2a2611bd779a45d60ec2
Date: Sat, 24 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664039453
