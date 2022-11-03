Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB427EE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDF0C433D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667439054;
	bh=UFOLaIPRFP6wsxPk+KU5PqKlsC1Ci0XfgcdAAU7PhX0=;
	h=To:Subject:From:Date:From;
	b=aUkF1KlDZgoiqKwqRyPDaqWjgj2VqicWLNRR6nrQxdznwqlSZtasa+wPtRzzXcD4r
	 9SIhdXISmJgFTLS0MZ1Bv8VaJqtTzZwRxfc/OhEU7s+6Mh/ELMLthxwDqd/A8BKXKn
	 FfVJLhP+dLSEpdFr2EkoeuIHJOJckAGsYpEe6w5xhZu/Qt3hO78Ab49gu7TatuYTds
	 0V6WcfMQPQNenXXV+kFIwe8RgP7hW3cGUxvzO4JhKZgjPh2eRWP9G2jHmD5q/0VruI
	 HIi1eekNjMt+H9qstZJvqB0qkhS+7q3w+ZEkq56gT0sBy+cp0DykcYhZ4WvQphqM3Q
	 qMiMP3DsmQrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A394C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166743905435.7229.14614790434170135444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190242af19e434b727fd298c81574a4cd93d0be3f59669ecac6fa802cc77cd44
Date: Thu, 03 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667439054
