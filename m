Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485DF62A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16EBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679881325;
	bh=pHW9SmsD5Kc/4g0F+VqAskRnPgh3ExfXIhse7P8mVu0=;
	h=To:Subject:From:Date:From;
	b=qG2qdEVqHPXpErKK6m0optxGAA1FdSMJShq42DhmV7c+RIOf9vkIYejVROMnMe6QD
	 z5p4nGDK4U/qYFKDDLhDq4LQPSbyIkQuAKXx6GlCkCBFFX0SE6jf9OIEGrkvsQWdqf
	 K+X4HdU17nAS3rnhTloAaqFErfPakGJpcarEe9I4JohwX4BrccQ8DyNaxB7wwCBOiD
	 RVrurzmLI5cymDS2KChZMRJ2hrnO9yorJ05dg7zYVu+MqV6CmzO1GlC2yYm2Gu9c4l
	 J5iLTX4wJkLs7uWYhuODJyFQh/7h3hzKiJP4Df4PgSBfhvjvNDIm7XtsyK8m3eQ+Ta
	 418OCgjnURL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D96C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167988132577.23190.18088045806079945052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6414460d796cad2a374f07910ebcb38fc49b33cb61099214056a9f9214f7ae8
Date: Mon, 27 Mar 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679881325
