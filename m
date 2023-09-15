Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F86F3FE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 08:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE55BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 08:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694765108;
	bh=mzOB0oufeJyrwXlwjsR6ySgGCJWUNYAJHWGe1jcGHaE=;
	h=To:Subject:From:Date:From;
	b=K27HcqBs6SsK8Xzssjs+ebXDTSFy/gCVb31V3L41DPDLWRGClbyEq+6Ni/EBkj/Ji
	 AKXosC8JNoXDBie+lvSlFZbzsyBqcj7KaBYhSkAD24T+z9CDa3oSiinzr2evaYSxns
	 QFW95TlB6xb+BFne+D5ZuzbZOS3DuSeL/x1H9Aec8FoD4xNA+8NpOzY+YY5Kfy6MZ5
	 tiwrJohaxOIonBxrh0VVbspQgBxsbbsatDLKj4wW5jyVDqzTOF8Gw8YobXnFSRTSl3
	 vSUWtcQO4RZ0C7oxPVsZqYW/SIV5WnUSSD8xC7JeSfGElb++GovtPY3V5BZgPfS4ov
	 uNm3JwoYek8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDF5EE6434
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 08:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169476510869.26707.17641343532217685396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237b396aee39421421b93a66f5b1ea1fd4356cbba0e9ec03b1c17d5c3377e9aa
Date: Fri, 15 Sep 2023 08:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694765108
