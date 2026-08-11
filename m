Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4204439DBCC
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786449634; cv=none; b=TybM2NajtMwgMEMDFAHCZI071moFwir5yREumuSKaDl7iruRjDVoIWVniog+oho8HwQf9m7qkXyElL1IVRXvW+NtgKyAk1gLnpmjNhxe88Eu9sIhCYX3xiFhuPoGY9yh1Jncg6xdCWRc+KcHOgk2pMg9AwZ8ZHjUaYGW+pM3XrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786449634; c=relaxed/simple;
	bh=GObq5Fz2u1+Vp1Bm+be5VisGdirrqdCZh5EBmina5yQ=;
	h=To:Subject:From:Message-Id:Date; b=A4aiXm87IyhwhS6OQ2GG/isYNBbO57+OU+UbNyOtmFlL9UNJwmlQA61HYzmQasvwQfYGTMo6zJvju1IkmHjKJvjTiGkIJnGRh2sVB17Jlqfr6NfvkHBTKDLX49LXEQKYWnwp0qS/3t30VO7IuYxKrFYlNYfUO9kreVW9jekLeuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GicYi7gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GicYi7gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD0EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786449633;
	bh=GObq5Fz2u1+Vp1Bm+be5VisGdirrqdCZh5EBmina5yQ=;
	h=To:Subject:From:Date:From;
	b=GicYi7gvQZQG2UN+URFkH8vcvGdOMD6rQmccDbh3vW8bqOs6y4wIwegyEbwoEhr+N
	 49kWjQ4ZtnmOCOyvbvq1r/Tks+Twwu6Rzu1/eOmXqp8FvLhTPwW9EBL9eXZLeKixxP
	 b/zdJ+3VUKCAqMnAYXlvvbbY09cbfBkogzypC7Ij3mIxpLn3lOG/ExAZWCOFP/mYjh
	 KSi+MljbCkLNq+YlHup5fP+XiXDEN4yF5qcPVpbxKcdi60s2Cqrk2aq9x/Y4W0ROek
	 QLy6930FTDy6Sy+fhWd4HoObkVbvNHQdEg41cL/HHi6KXrRSQvNnpKx3isf2RxbmBi
	 a+ZGl7zS5vnkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9341C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644963368.11637.7003728636597132560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f679344d92e37e6683eed7a9ff4644d4a76792a069ad7d647adaa9fac1c94379
Date: Tue, 11 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786449633
