Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2813368
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD0DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663468253;
	bh=NAoUGb96SySUFrldw4IwLbOs7zhbe9a7ywkVoJ7jvZk=;
	h=To:Subject:From:Date:From;
	b=XrewybwiKoshgWN6eQd0RfThtjVw6QYk7vmmtUk8MOjzdJir0qaUwKvEAir2nBO6r
	 2/8zDzAs7NV3EcvIVgFQgVyERb5fZQ46u4C9pKdFjqryr2Rbs3BjQeZyc4oHF1FGm4
	 moAQtgOPZ2kGV7Ig0jcqYkiZuU86T8Mb7TJW+PPtv1UfEhDJH+6XRIGYoGReCYuGdK
	 y24rYDQyZiRo8wZmyBpuVt1H8BTNeTA2RIDIfkIkjhtZAF9QqbEZrN6GCJGZkPkKa3
	 KYMSOGTrVQz2bVem0HU+Nz1CX7PeJ9CGdHzp61Cmi/EFSFy3JY0Xd56iQEKuydqcvG
	 d6LsO42xXrPTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5253DECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346825333.29795.8117731926438564466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fa22a24268652f70ee7cf98e3f8a0cc83f8be9b4cb762ceed23aac0633c4b7
Date: Sun, 18 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663468253
