Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8657A5A
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728ADC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666690253;
	bh=QACJW/VD9Zfdfh2naw3wtaR8yIyYi6oF/Ba9obn6suc=;
	h=To:Subject:From:Date:From;
	b=iXURlWx2Pbq1uqiZqBIxHEgxWrLshoY+nJPOFgavLvfYKwCFUM7HEptd2obW4BAcR
	 3pUC8OA5ScPUjbuLtkouk6jPlrRhLYmI3sWjaeFVjmJhP/Y0EMibob9RYNEzlh+4F9
	 netHJdoe2B3OAJiv7o4pjaz6CvbL8JN9tC1yJ0NiGYaumzpVXwj6ip64SJV76N6SoN
	 fS8fr16zrj9finpDkLm1B8t5pkDFzF5rP5wSi72qkw6pYiBHj+O47DTSvH1ZYqegNJ
	 M7MXOxkxAsHlLWu6kBfPyDXU9pmTJPrUhPnVsWr6YxfQdno7MPfcYhwHomTto3mXGE
	 C1DOSmMOHfA8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E92C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166669025333.23413.12022435209259198389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e49975c2350a07bf2dfdb11e63673d946728d0e89d5f13a97a6a7437b9f422f
Date: Tue, 25 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666690253
