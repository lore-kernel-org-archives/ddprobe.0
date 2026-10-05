Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B58495036
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791208834; cv=none; b=fFKFLUVPa7C5fs5A1dsmZrWtd/oCs9akwELcfj1MlqoQMVwcujYPHRwGpwwtKiY2Bdn1RNoHvCMCFWqk6DKb7jlRAD8pjbzUSvUQJ6kOa/HtRaYF5ooS1zDNw6CRYa6kAleGPhunG6CHzNc6SC5k/tXp9Mf3aVA4QcxdDy83/+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791208834; c=relaxed/simple;
	bh=X3FsrZbwOVJ4figi6op3GS/ptOK25nhaK78B0ZqG8qw=;
	h=To:Subject:From:Message-Id:Date; b=mDyNb6fEf14PhNAnurULPrLKuMiF+fokyErNUDv4EFZ2aptqJWf8nCn25hgxumPyPeyqxIXfpM0cMrwZ4j5qoFgDiVMEDNKvRxXfOof8bhsJe9qIzZuzhTCxGFam6k+GsM35falZGhjxnZS14fQ8dBpWqZmoC3gGMkBsf/WYW4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L00v/f/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L00v/f/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFACC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791208833;
	bh=X3FsrZbwOVJ4figi6op3GS/ptOK25nhaK78B0ZqG8qw=;
	h=To:Subject:From:Date:From;
	b=L00v/f/9VBH7z76RmSlBDk6Io1XGesYKUavKRHoafy8880RLKYyOs3g0MdD3zRS8m
	 rNCY5gi9ETCt0kD4wIxHfJ+OQeCHAF7MKaaLGI3dgazXRqV1bW1x5pghe8umObim8v
	 tDpD9rzxag8nRAr+dK5Fn1lAFt57QBEntKciS9Cf2kjYqA18EzINPq+snQA6JQwZIL
	 iR+J3hAniIlrJmyvj4UJfhLKnzFZT2Ga/S+PrgMtLX+JnZ9L2zFl/petrx+DkSCYb6
	 aQRDZQ5xudXuGXxFmCYdZ+uumeSj8mQT6+M1ihXZPF7HY/ZMpeqjQiUcUe/UzUTQgm
	 h/JAzn3UubVNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F69CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120883368.1576.554181586903213428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1366557a15d1e67eb680b23561c1852960644fcd72c7a0bda002f449cfeb2205
Date: Mon, 05 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791208833
