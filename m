Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320751172A
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744854594; cv=none; b=GQ4MvrRfnlvJvB/WFpc+1dbQA4Mf8B2LqEpkTGb64gF+RDRKAuU3hFyDm54CaEVs3rHGiZIEBv9nvDn6jhpqBaQuusS4MpRlno3gVIE6yfuACNmNdad+ineVi+HnE60uReh4mt6ruk3tqYktCVCMY5rQPevnNPxYR6YtkOmDCSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744854594; c=relaxed/simple;
	bh=7hYWFXE00kXKrQMt+ZHae8WlqrnrPc36+IWF1WvUt2E=;
	h=To:Subject:From:Message-Id:Date; b=r6hZ03y4eei8TeZjQvVdXmCa8qWN3TxRNLqPnZBn+V0nklUrCtFPLIJvcxPKo+NNicjdBesecz8P8GReTvElzmsZdcOlLpm2XMvPNjcVUJeW+G3Nq64ALSXFtMM0czIIFPbgFC7f/7cvNaGSFiN44IrWF/6GVahJoAfhCFUj7Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckpQofAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckpQofAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F5AC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744854593;
	bh=7hYWFXE00kXKrQMt+ZHae8WlqrnrPc36+IWF1WvUt2E=;
	h=To:Subject:From:Date:From;
	b=ckpQofAh8q+BCZ6mJFFuLmBCDFuGwj7aGaihhodCZNcSwLxGbC/tp6Xjn5/LcE6fT
	 4+9MrfQPJ43yiL9K91yPzZOkawA2wy6ZZKy5i5x370zjdxP3FsRX9ol3NLe00Nnuz8
	 mE8jbBSrwCoFJrUkxOBe0bnx01j6SR5Zi6CZQ/sCdsc6NEtkFVXuRfXOOKswGEn4qz
	 iyO8d4D1Wb1UmoRGVSYpkrrQ0L+E4DlbxcJep6z2MHEMzqaZIC+0C/j7baNGA+3CNn
	 9WE4zIPhChppbsG5tUdoJlChKhT9H1lK6tGvtJIsxpE5rXmozB0jSNSJ+cNwPh9VuX
	 EEIsm5yNr0N0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538DC369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485459360.11355.6683250958599159390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e512d5657390241347b4a30b28975f88a89feb11fb978b014249b3bfce7d1c06
Date: Thu, 17 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744854593
