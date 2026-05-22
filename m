Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D3378803
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779440554; cv=none; b=dxcGwRnZmGUI1N0ut3gcctUeY8nLF8lbTUu+AUnAFg2A0CerF3IlV6ZuCoXs9AE3KPeEcr5Uq6nWdoJzg9hEg/9kh1F6oDp8Nfuz5QSgx5/BBefhClscf/PrOKjZv7ptS+EPtahJOpuYdGJPhv4mgiA3sYO0KehWCVMlC72Y31M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779440554; c=relaxed/simple;
	bh=McpAIMu/EsxnWJxazuOHMuJgWRPJIhyRF/EHksNvmlg=;
	h=To:Subject:From:Message-Id:Date; b=aFOCJcOuzBnJtPk1zLqnd84kGd4Uba0FaGzNbrYc5CdEF3aNzASW3oROsSuEvODnNlsdVoTfEJ1JXza1YPdNJC6OKh9tXgKyTtx0ffrL0pK/JVQ8GxwecqsME+UfGFK2PF2tK4MREjNZaK/5nkan6lw7TNirSTqIdCBxy+BlhTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo0GC3TM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo0GC3TM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EBAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779440553;
	bh=McpAIMu/EsxnWJxazuOHMuJgWRPJIhyRF/EHksNvmlg=;
	h=To:Subject:From:Date:From;
	b=uo0GC3TMq9HFNAAnvlTxbjd4CkRsjno1vpFq1PLIBl2V9H/ZeXpjEsQbSLgF8crW3
	 61hzWQT5TWPsf09pi1cukFa2MO7wsDByAxZPMvB6GXFgHQ9b2pWQ4pdCkyvLe3xinl
	 jYxKvqwuvn8lXzfik3M2Nk6aYCk1dwCNWYezmNu7ae7gs6odr+MHhk4IQNBoSNKw6w
	 stU0EGWuf3p4XPDuyg7ZsCWsdD69ZwQZA0c8NDN3VIIDwhIA3RyP7SpeadNpoP/Gzt
	 3HFjzL8AQPldp832GpbouZAD0RFydEmCBl3G6NhiYuBqQVVaN6kt5NPFB5UICTPbNM
	 VaXt65jXwIUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB855CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944055369.19146.459749620660221588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7c06c1801bc9a39fed103d6aaf0e3133012baa1860bcc87122382aca049ec9
Date: Fri, 22 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779440553
