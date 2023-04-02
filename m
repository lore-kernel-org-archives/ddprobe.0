Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8342F43
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2960C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680438305;
	bh=iHHoZKbAykCaupXcXq7KoQcjw3WvD0uyfFCod0orM64=;
	h=To:Subject:From:Date:From;
	b=UeMMi04HrTyvxfGjtQAiXMJlUmEZfkonHagXpj5piQkeEMBDF7aeNmUOI1/R6LHef
	 52VTGen4sjcB2zX1wUpBwTpKBj0eAvPw/pMVFZ2NxcEHjRPFuv7iSiarfiyqXhG63U
	 QgIxo+dCN6PrdhxE63gU1RP6hDtfqxwkM0NKncZFEAenHzKPBrXyYLYfS8Y3+dXIvn
	 esW3S6QO/M8mUzkhC8DqAhFLU53GvDcKJik4l0Ea1VZquFC3QfRADZyFmMCxrj7Ugi
	 Uja6+V7J6jAcoY4kFcF9MhISca5TjLyL7j6Re/4TD93bvZA6KOu33p/J58pA1PrDj3
	 bnjQOLU9l5VwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66C5C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168043830578.17478.3306565897840329169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76ed8ba47c205ae519d1c8e4d3cf252487d0f1d505830f1fd821d8f0273da03
Date: Sun, 02 Apr 2023 12:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680438305
