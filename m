Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06517C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99938C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672799487;
	bh=GFdPf/0cQJN62he2sV+93mfWCw3A1Hjj64UlOpeqFPY=;
	h=To:Subject:From:Date:From;
	b=pbJgfZAssgGiC5LtHH8KUkV19K2Ev3I7BhGymM5PytqwF+/+3WuY88qmh0+o7K8hQ
	 tht8l6zE47hWEf7IBqiW+Yo4v0Og5yZX5+wGKoO4AoOoP3DZm6eZKAdSc159U4ZyJJ
	 7riURGAxRKf6yCiMUisgi1FstoTLoS3i8I7G49YUZuBoKuKK57oRDpjHjdnne0H5a3
	 j9HuE/ox6sWJwI3wJEbDloH7glhlhj9H58Hhy+6/Vx2HPMQU7O0ineLOI4Awdcbx6X
	 +Pegz/1B5eoKPzmxwHFhOqZUsb/UOoekEvoVuGoJ0RZdRqoZMUhNMI0eDTiodkvjwT
	 0Oow6ad5rAcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75931C3DA7D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279948741.12940.8776679340461214778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddcd303ecdea1827d28fb94396d826eb2189d8b545887ebbd36c81c0159ef74
Date: Wed, 04 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672799487
