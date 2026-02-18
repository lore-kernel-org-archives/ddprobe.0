Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4BE1FF7C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771381494; cv=none; b=oLwm8bm68LUpboeTrcZnt6OKSXc43eQGnfsWPU4pJ48Fcoih3lsj/3RRcsT5rounIHL2Zg2OUU7Tdzpxhq9GoLcdNy9eubX9Th6EVCVE3N38Z8wQM8ns5YHGywLZYwkLTdCvAgk5ArY9V20wiYJqepJYdkKMxNfhwpMxUtpia9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771381494; c=relaxed/simple;
	bh=jSR5FTA32rUOIJMQ5MFJphbKEmjWGsY0PykDIWlPuCE=;
	h=To:Subject:From:Message-Id:Date; b=VotVyTqAEF/rYBs0pMgkp/DiQIKM2zeSJmZeVYPOFRYuUvNfjudPb/yviiNUuB23qFlcnkZUBIkfHw8Km2862Tj3j1HlhI7AN0NOH+n8jqKw4VVdKhTd9id9oNXEempwgGlLp/gtVnjHcEnS3yoe3m1JLVbp7A81uGEi9E7Dobo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntnv+4F1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntnv+4F1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771381493;
	bh=jSR5FTA32rUOIJMQ5MFJphbKEmjWGsY0PykDIWlPuCE=;
	h=To:Subject:From:Date:From;
	b=ntnv+4F1d0yfjab0WU5G6XWOo8DiMDbny9xz4ff/5TKI+4tg2zHxC91D3CL4X/D1Y
	 dzWpSZFMnRIl0AxqQyxlHaGyAviTXZegIcV1qnOzrFvLuA5ltW3uVJ1r1fEMpKxpo+
	 tNIghiH0BZqZ/Uv0r6fwiZ4RljrOUinHAy59O5Fl1VxNagV2ICg/e4A8xmgZI0avM5
	 l1quEA0dgOVE48ABKyz3qlAwsdmtI/O6uh37KigrPJbrBGvOAmQWljG/7JfDlys1B9
	 L3f9Ej6Qs0HPh0kOGm5aXz4qAetwQbIEeaqq+aUF1zzYCKUGuEo6WSl9dKrt6tZ8xi
	 i1YjzYd+qSAWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B85E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138149361.10433.9384096499041346603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac80ad493da7507d5f06c6f0a6c35462fbdb37e2bd23489b9394961bdd9c2f8
Date: Wed, 18 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771381493
