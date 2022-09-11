Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87917F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ECCC433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662873053;
	bh=u9V7zE46FItcqTtDPQ+XEWdDrVLknbP2md07W2M6BXo=;
	h=To:Subject:From:Date:From;
	b=cW7XQ3l67+ZwMj34RAayLKmlIZRjr8gHupxCH9tITH+KHJGTxixhCce9f/6O3Ztbl
	 6mN/QIHEbiG+dLyFbaJvqbqRj9tz0eJbf1ADu8Gdv/RjmWplRgdVlAoFvrDdEgR6L+
	 9YHHYw8cX1rxjZ84vxzg3973JmA5MEkL7CTmSqKyX6eboV8kcXL3QXDCJuTd8fYOOf
	 ybe3Pmgk2BU9YTei6T0DNg/uoW5x7vsBFJ6f8ZlSTPtRO2yQqhTKUFCUDeWjpQljV3
	 zn1kZVYv9jOsAUF1Tgx8A50zeSnn89bR543V9zpn4UO9TqG7KOkggPqyf3dXcodIXm
	 Azh+038+EdD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527EEECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287305333.9492.17306457096786936014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096f17a3d4845b5b80a9cfc1e64771cbe1fc3aa4d6b54f446009c91ad897f47f
Date: Sun, 11 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662873053
