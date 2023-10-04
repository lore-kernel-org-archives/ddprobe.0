Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4EE134CA
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 12:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDADC433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 12:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696421168;
	bh=YgJcRMKivL17/+WjHFtpMYS9SkFZ+06vzVn0mbRifPw=;
	h=To:Subject:From:Date:From;
	b=le+sps9fmUjxZC9nng55TSQ0o103ZfQBP7CU1N3pNp7xTY7zMknPNDV2/8kw0iIHG
	 TJlF8jIB6hq3rJYyFuOejNCwE+03mm321dYtMnu1hHlhgtBdGCs0/X60bWLEbx923C
	 RlzS206oDhb96830yf0lJMeYej1cHspYlXnJQZhXJipr+H6tNxicB/WTSsGK6fvS7u
	 yc9R0w7uIFj2fNP4C8iUTYky9J4601XakjRCvZGRmn818NuPERp0rQDXaGgxJxz75D
	 t8B9UNFzfJ5dfv/+XLDIT54oKZjPiD2tl5OMXxB7tDCXJAxlQAApxISBPFkOJutm8M
	 guLP7XKLJofrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3DDE7B5F9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 12:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642116873.8305.9211772419228472141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2587cdea92bfbd5d7f5cb8ccfaaf5653042869acb79ef29f56c2cec131588f
Date: Wed, 04 Oct 2023 12:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696421168
