Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC192560
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F69C433F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673520087;
	bh=9luSkZ1b9BUX5fcMURlQIBeTJI19LFWjIpkOsYqfkas=;
	h=To:Subject:From:Date:From;
	b=XPnzuox2q5+ws9LSnCF3uVZgaRwnu366cDnJqTo+H+BILVqnqC0LhNhLBUYtG7bgu
	 Ef+d29IFO2qfF0/ayUy7+r/hMlKMlB7eA/IKmYqLIQ55FBEeeVWjdXNXn4yA+3mY6l
	 AvtrKA+iLSrY03UioclN8BK5daPk6RjmfkLduNe6FlNfo5r0wPmqZ+cKQPSUIY93kC
	 s64SQL9AW+8lXxqh6iNS5kJMYOuaED8rdiZyGqE4maqoSGy2odDnfHU0wpyJN5Ap4I
	 QXIXEENJdVgsOTYCiD1stp8POwkIJa3Mk4dIvneGaVqFSzaWjMinbR/SlRJV+9mAqR
	 ybKdYZaJWqcWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679ABC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167352008741.12974.838182277215113082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae37dd0aee79d9c66f912c84ad1c8da0a55027808f9befac1d2643efc7560b97
Date: Thu, 12 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673520087
