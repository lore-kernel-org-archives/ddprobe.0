Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1F51374
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8AEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670676687;
	bh=PDVcuD/iMRZfTlonFE8fb6xksKn+a9JrGOgY5nKK67Y=;
	h=To:Subject:From:Date:From;
	b=IaqfyqUzwKl5Q7isPzKWWBGqCFveR5ddIJ1IVVa1upBQ08WthYF0k2g/03Rc7ajlS
	 zbQc8qoZp+6+s35mBIhr2KL54SekJoJmeB4bBlOzXOo/j2DU5/MttrvAOM2QHbF+G+
	 hNZQfu85n5Su4S3YpVouMKVIbI4pHYg8oV+4DQTjKr0eGSz+NX3j07JfvEqI0Z4wtU
	 iPItIDIK5ds3JG/N/mpAmZooXZ4mA/Q4wHhtt+xk3bQByvlhCvKWpybepUGXEvn82s
	 u+YLd8H8E/7vP4Oa+YfbvnV8fWjWoRp1Re/tE5PSKePT/CRZONEH3PiEP3uR0is4AS
	 A2UrPW2FB9VMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67473C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067668741.1076.13699707500661501382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f4cd399a373f138a06b037e00fad443cccf4e6daf0bd7eaf7a5ab3e6d298f6
Date: Sat, 10 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670676687
