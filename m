Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BEA79CE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B35C433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673617287;
	bh=JEyjtSMjAmeClZPCxy4ISGcHrCp+DCNK1yXT/wS2VMg=;
	h=To:Subject:From:Date:From;
	b=lV5+FxDsflOxyrg9M4RqBiJ8BudlbPEL0zCMkhUeaHuyZ7NfuugBrLGXeYmZXn44E
	 oYOj9yDjw2JJkmTW0ClcF5QBakZOYil+o35ATDqPQiI1CXiqxQK9mvD2DJVD3sZNi4
	 rubnk5ENHoubEp9xN2I3y9LReYibLlbNQJzQfAIA7UsCSnhVqWzWLztbjIBLITygU9
	 sbdgF6grDo9b3bnXbF0XT/THvBg0YgF6xq5wHDMQePmP93+hsWJJkRjTOJtKMOuHYK
	 yXuwl5gXWunEZPeMQF0r17YGObbk9XVU5TImdjvYCRMsmj4oS+jpJeIf3gKYBrOJza
	 lT/wIY/42wsxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B5EC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361728739.6570.18024985693182013441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada448b9dc590b0d123582c403778ed1989ef29370f94f8cf8f8c51d45d63a24
Date: Fri, 13 Jan 2023 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673617287
