Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C4A1E511
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762010994; cv=none; b=Mn6tjCtO7h3TiyZUQtx7z6mYplHV6HXjYA7jKxeaqVTZrxmHSq6jNQG5SYJgU8C2YoTff1qlC1lE1vcoKSV8qfMl9UrnLzp/hnXQsV/z7Ku/mXoWFPcY6uCAVgTRwESrCIgNDXm7wkxhI5mHOfWHqm4kdLmJ8XjRcJRN/55GyE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762010994; c=relaxed/simple;
	bh=dYbotxSxMiqPAgeUYvopctBEK2pqwXNp7+B1cloqTGA=;
	h=To:Subject:From:Message-Id:Date; b=iJ5ISY1JbksdLtmWi4+GnteKsTiqx1dCs7dbzhegiWMWc3q8SkLrupoR1XEiEA3BsAPnCYH2Mzxuz1y8H1aPV/xWLtMUxfqsRvBkBpqWh8NGZFmmtExTI0TRt3mgdIM/ecfIOxcUz66qVl9zvg+Xq0Sa7faPYWItJ9m8GFfE8Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O47wbHkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O47wbHkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA989C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762010993;
	bh=dYbotxSxMiqPAgeUYvopctBEK2pqwXNp7+B1cloqTGA=;
	h=To:Subject:From:Date:From;
	b=O47wbHkFMSblnTjGZLqBHR96LrQUwBhBZulf8agEN9AxDT3ZeKGu22aOFQvPJnT7G
	 xy+ys2sQR8EnFYCSNemwt7LtugQaO1qg9IQJNAUaE/CUvWB03rMVd5GYWMNUffhz1X
	 m3Pl6SKOWPOOMFJC0rwIwkj0aAurSFCxjjRBLp7DlxOS/P8ByXfW9aBHbZw4g1ESAw
	 sRXttlxefi8Ev8rU8mZSwrXOCIGZdYVbQAh2Qh1++t/zu8v8J3I8mQq8tJmnR0IUTj
	 89uDHyiFUXlHpZ+ibLlFX+FE7sMY6gNjmZzfOL5/a+OvInMj+HFlz/YBTpIVE6OnAt
	 76qIiMQNGt7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F0ACCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201099359.20925.2673983820259841513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9517a15ad98978ced63bfd13c6141a0ceb336507ae7b126c58ee36324aa571
Date: Sat, 01 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762010993
