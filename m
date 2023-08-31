Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4617D210A
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31ABC433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693473248;
	bh=bYEGudKeXRijV/9NM7QMtI/wSpHZpHT4kfMlY+oOgFA=;
	h=To:Subject:From:Date:From;
	b=izM4IQpDflRD0TlO0lLVNfB1xjf9GEf5AX9uvvqMq9hIMnhEFhjfMvzu04VgC0K+A
	 dkOz3BQRSFXZFAp0L9X7ak5A4LJGVfYR6iUvmi5lWNxjJ8wt55HvkFgJCYZ3+AlMMq
	 qC5a/O2UX/6abZauTWxPJSSUVh8NQkEKqjAW4OWIc5iOBNLzqewRTBbY9/od+6FCHN
	 a7E3YWoW7WPvbex4yUsd5Z1ayfn4z0sMRQ0/cLx36kQK1bYV8l7iWVa8oGb7FlSmNv
	 DKkFGtkqAy5Su7ECy0vH0DM8SF395CllFUT8+N284ksaM9c+T9uZmR/PeCKW/ScUxs
	 n/0Cs/TAk8YJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D6AC83F10
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169347324866.15859.8770141359120887621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc4242de4ddcc5a869cb0b23fdc47cf3a0ed98e2140f93c8e8cfbf261918cde
Date: Thu, 31 Aug 2023 09:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693473248
