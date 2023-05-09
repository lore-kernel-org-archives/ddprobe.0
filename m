Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510E1F9C9
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 17:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9A2C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 17:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683653466;
	bh=9d9rLt4Vj54atx+ci9Ir8T8K/CrOJWdhtZHl39oj5Uk=;
	h=To:Subject:From:Date:From;
	b=rJ1YfqT7aESh8m3L/BxZi7FxPmL5V3AtyZm43AFOlZMVFypdrOx45nvvB0blzQyAx
	 +Ow9sl33nQdrOgl4odeEDXXmEwejwe2ALccb+q53gqXmwgqqRf9nnJ4ncNZL7pf9f/
	 N3ZJw5yGVTkeDQbpQ27QY0y5CNqlZnYxUKwvuXKhUWAzXYeiwLE6alw+klWjJ9Qu9d
	 qv1IIn6kFCYSFPFqjVocWQeGWd14UO5wmbTmwz7P8pidYx5ev4CkPR0dji/jPfMVXX
	 3b0xz+kwYnqWp4Lao8DjwCPbRKGFEx0UQ1KCo0C+/PLkZfSVMDdlWisogx9+xtK58s
	 /LzBvE7LYTO9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB78C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 17:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168365346580.31962.17210735654396012873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa374f2f2384e39581f0090044b5a824fdf0f8ae54b449cef997d61c4dbb87d
Date: Tue, 09 May 2023 17:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683653465
