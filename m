Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E0D7E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F351C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672717887;
	bh=52iKy/uYU3He4WkpUlp3rdkYzHwtyY9UN45WAXPilPI=;
	h=To:Subject:From:Date:From;
	b=eUuUUDsQ3AEJA/DhYk+b73arVzQCdZRB3etF844K06/xqntiMNZK3TCu+eJQa6ghN
	 v1LylzRcWunPAuxlFzlvNtU1vSnICFoBEsdLtCsNZFrxt4jEPxqU/0shePLxbX5hqI
	 9k6RYKe7xwzshr4pDRhfl0XMI4TyWR+wSro4u/nJSFOzfujmkWGlhodC4mP7vQiObI
	 eqwFVd25avDzSr9eGc6N9TzLJ9HmoSy8XbriWUFCd7QwIDcJgDBWIaudAycTQeEKhS
	 rVpN+eTmwZy4F4MgzKu3z1EgfASmtuVpeZsWvT30Iuz5Fhy0gkPKvdS8la4lHFQxLl
	 jFcqN1EhGxmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A6BC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271788738.6322.14983337239924159264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc0a11ac29ddf5d6564c150b589849dad1a7e7d781c51c53678a483b6cce619
Date: Tue, 03 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672717887
