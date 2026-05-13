Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A0F3AE190
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778670634; cv=none; b=XTEad0lhAXIsiPb6DTDyX0FY3/cDOICDJilSk12YqlfTcn+GqAWRkSBUKwgnbqxtbySnNX/hlBZs8gclxVRGYd76JfT4K0QNkaShx30/AnZBlFJHdTAgFpUqOWbqCmBC4xDZup2f9ZlbLGUGWn84mAcydhHGP/GDVk0MZMB/kwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778670634; c=relaxed/simple;
	bh=Fer/5ePzS+peR4o3z3EvClGwqQq+kbXstk7MZ0tVSAw=;
	h=To:Subject:From:Message-Id:Date; b=pySyRgzsMVf6gKg1a3/qYvgcFgSKcGAkMILE5T2OeGxh322MOq90EUuIoswfxyciGZ46535gW0vHcjWmhnjLESXMhiwQH1ygN78w4P1qeoRXTuB39e+t8tizPe5GQ0DwUlA0cuQ3eZd1fPvFyn5zfKfVyweXNE6UfTAfpGTMWYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMPDQdL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMPDQdL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C00C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778670633;
	bh=Fer/5ePzS+peR4o3z3EvClGwqQq+kbXstk7MZ0tVSAw=;
	h=To:Subject:From:Date:From;
	b=dMPDQdL/cXZbEFH6qY5EMSty3Vdfa7ZYFhD28w8/AlT4BYYDfiahWk1RyUlCJlAQ/
	 El0H3VxJyaT6KFQSWTib/5+uNvjbaYbsR+wlWPPE0b1aCKd8iLb2Nmwl5OwwSqi266
	 RZlHcKl8DOnVvc4jN/ZOfYsh7QZrBfXab5GcUcBbsG5GmElNhfLFVhFL9ImfolmaQR
	 tbsbJc9GgOP4jDpUHAYhz4KHfFRLtR8YobGbKZD9aZyT8UQPbUQsyorRv+7SMvJN2W
	 4R8aVf+/Ap/1DSG8yD/zqih7RkYgmYNYhG/5uYLBd+FYmksbI5AYBXbrCyRAsVoHa8
	 RANmOWV4N6Dtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1FECD4F35
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867063369.9783.2145104279959059980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7b0828e63ace0ffcbaccfe2f605d17caa298642da751e5d56cb4bf3bbd06c6
Date: Wed, 13 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778670633
