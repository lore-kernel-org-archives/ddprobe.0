Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B54A7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 18:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF7DC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686766028;
	bh=Za5H3kKmQZ75xfqckzgkEPPSGwSIEy6/BgVxP2Fez4c=;
	h=To:Subject:From:Date:From;
	b=dOWg1KyKqk+oAJme4b5cXAQbgOfbze//vxnGBnDuPKl/dBU8NUufIs1jEKTr7UciU
	 dbUdlqg9dpuQBMe5H3tzOzfs8iXLZi67jXb3VuBkH1eS6GZ6HdVXYq1ol/o8FKAZ8x
	 6UvqqarKhtztObov3Yt7qSO3070WVqH1rREAqTmKPelcWCP3wJjQFDYn+Bo69LPp+f
	 N/qtC4rZ6BOTlaEQMysIAUQsgqkcVqhpp5PtLjqpKmKIQAzDwSVxqyYKBnAjjXJoLg
	 XP6J4rFwqV1Rfpyyrky4EbFbe2eTbMlmpXNJMnwycUXkjKRh4MjL7dMU8sZhiNoG5+
	 EA3ZneZYIJqrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50BCEB64DB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168676602873.7777.2310982396416599421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f0c1685e69cad23d0159feaf0c4be39ccc227256106e249d8c679cda965ad6
Date: Wed, 14 Jun 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686766028
