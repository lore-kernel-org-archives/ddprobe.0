Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51926146D6A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735920354; cv=none; b=bT0dYdiZvhTjm29osCJX/taGkKm2XgKW0npD3uMbEy1iebwGrrq9mYDOTNAYUOF7RJ8OgT3pguzIclUVfQgA4plim/tUrnjEedfTrVvmVVt7cXoRBPcqjq4nGqeFnlO5b3HDpoWSCCoNfLngj5fQb+QcNMMRBQy/jsXkYn//LqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735920354; c=relaxed/simple;
	bh=7crLbSSRsSK20vWAG3M1JJ1iiUR6EWBS/cQR3KVHZ7A=;
	h=To:Subject:From:Message-Id:Date; b=PKOWshyFOlW1xi9cqimIq49UvJ3hsX6MLEoNwZiPfs6IAG85A01FA4draC290u/JRan0g4RydHpOEJTQggoNjNXF3R7KSJjZy7X7auezIL97v4komM8gGAHgfP42RKt3/IhjWiDvaJC9brLK+Un3CzV+DUKi6OM+xdaXlkdQYec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxMlEkoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxMlEkoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D1DC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735920353;
	bh=7crLbSSRsSK20vWAG3M1JJ1iiUR6EWBS/cQR3KVHZ7A=;
	h=To:Subject:From:Date:From;
	b=nxMlEkoQnBedL3b97Ru413DjPEhpFh8MqN6ZtKaU6AuPqKrjxyQScw+a+ckKS6MNn
	 L2qX7gO+MpK8r5xsbhaRinebdYc+UJNvverhosb8lWz33SJmbPkgisKufSRey3D3tF
	 jTi8a9qvgveg/2fNokbYEFCuELOxrGCvzUiZfwruJzIjpQEgelgHYo6MtGeI/4Mt3P
	 1qGmX7wq+pGgv9BLIk5yxvEQaEKHaiZqAM5Dxk9M1ksO/aRi7GzG4mL4OLs/3uDszc
	 k1Hxm9ymVFNYdlrWBffh7vbmxr5vRv7Nnn2zGjBDWlZlLkhelP+A3+NDlvUPyKT8Ra
	 ORHOmwRMHcR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F05E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592035361.23597.5534369297651389142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3b8697e238f69967ab89c97390da6282d1987ea130a8fb84307a45eb217314
Date: Fri, 03 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735920353
