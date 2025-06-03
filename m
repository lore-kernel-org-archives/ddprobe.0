Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476DE20A5E1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748930994; cv=none; b=ju0ouxDe4pvhekxSJdNP4MdwEqeTaE+DJILn9+FTVsbYy3GP2JaNQcZk815wlnozbfmD+QR1b3+yhoVWMN2mihMbGJigcHsh7aiqQMNj4+Wd37M8DslG8G1vlSSbjnbQug5Xyr4jPY9bX77HSNSxYlEFc3F2BqdeuzlmCBwOnHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748930994; c=relaxed/simple;
	bh=ouLr0hr97TL1STNuXmOfuDYBmUV7EXsrGRw9jV4xKKA=;
	h=To:Subject:From:Message-Id:Date; b=i8sn8u9ma29AYji4Y44NecVHQXx9YO6j9LRf4NVP1qW0uI8qaBR6stdNrJsQlQMoNnn5nfINtiazJEdcAtDyioflU+wsFU70lGxxJvQEoRFebkTuhnV8VweTg+CZkOeNJMqry4E8P3noZborVAeJCXPU/v6fY589KJTtyP1PYtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cqxja3nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cqxja3nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3715C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748930993;
	bh=ouLr0hr97TL1STNuXmOfuDYBmUV7EXsrGRw9jV4xKKA=;
	h=To:Subject:From:Date:From;
	b=Cqxja3nz8XtBaqAL2S7flqYrM+JvS9uCnoQZDR8oqQCldtxM9f0VzSOwqIZo9wUKk
	 rtJaqkIqsELzCVEWcvmLVdEDUQAqvhiXyyvwkNKinnu9xXLbhVl/uvOYV5KZW45Kz7
	 177RSFddwI3tbJOsk2gWjeuAo4M2oVJm8BsL9Ff2o8pLxFOZA9FmLWLaQlZ4RAMAx6
	 SPiukXLv9ILlQoMqTpLZvPUFYkoMMDS4iMdPG5+1+Lvzilus+vBs2RoH6xzwfjS1yU
	 SpWKFUBR9p3xlFXRjsdT71rc3uVGmlojGMiMzBbDhXRyqUmSMjxEuHOsI5rM+khZkf
	 Q2GzAJsgoi/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F676C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893099362.6454.2563215617758777389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf842c1755933a107077bba191bb16ea769a485f5b8cfb40a8b8a436d491e4b9
Date: Tue, 03 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748930993
