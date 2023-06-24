Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493821384
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81D0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687613588;
	bh=UjQakTnszgL+O2lIC9OYptFsHxu1o0xlY8MYJHRcdT8=;
	h=To:Subject:From:Date:From;
	b=Q5hovYyBduz2VjZ5iT3Wh92EaDu/SeTDd2qA2H2Kd+PF+kb8Qb8nRsCGDeRabk0y8
	 iJTGxC/eBaAcxQTXlcjPxHmc4FzbMVlx/iTPHVCaIIQp6edEG7EnWKe0b0xADpGGOm
	 HZuxxdySXy7Hh9iEB4QxFuRekNMSY6iKlovvDt1QZS1/0Bj0dkrVrTo3onnuf2N6xC
	 ZT36jqLDE1xF2a95s2xYwS67e2Ap3MqztMEBxEkg0u3c9IhLLa85ZzkdohevvCzQR1
	 SsfhDBad+eCit3USaik1I5ZEb8w/UU6yB30PtvhxsuKC/bjjssldfqUQXjnd9lQ5zw
	 DNRybPfmc0nnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BD6EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761358868.13480.6453716953146632904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64838fc216c4598c9720fc468106b045c7f708af1afe7af4313440f6cf4375bb
Date: Sat, 24 Jun 2023 13:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687613588
