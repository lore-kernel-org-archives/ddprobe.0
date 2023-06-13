Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5742A1ED52
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CC6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686698228;
	bh=6PFZCvasYUjBpEAOjp/6D8cKXYT7egvvWEzVxhNwt84=;
	h=To:Subject:From:Date:From;
	b=m4zThb6f2Mne9zXhf2HDzG8A46tOoKYlhs1l2nhitkzj+I1VoTcQGjJkPJZ2lDuXQ
	 3te5Rg9f67PSXcLKIZfGcYJgEAKnxmHfBnEsl757cD5OMzjD/ItRKIDLJcg4QB9qNl
	 g74DNAK1IymREo3Z15LZ/vyn1m3r6/FFaToz+hpsqdzetnR4Iv0z/kTK5nDerySKrt
	 /tiRF9nyBKs40uowMr17eYS3xChhWrdYxupH1vZ25/5Ta5+hUFFYeOwTqroRpVAJWG
	 Tv3bBbQovm/b0sBI/tiK6gUUB1E/NwbMB7uQqT1pC20Hu6QYsr1i/BiC38AxCyqVrf
	 tEJ/MrPd20TIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAACEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669822869.2985.14988187124532065358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2fd9da6a2a28a44d498be90d18e9c2d5202ae1cab4d7f7017ed2123923e31a
Date: Tue, 13 Jun 2023 23:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686698228
