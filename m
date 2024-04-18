Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547962576F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713422363; cv=none; b=VQabUu78/whmqr45B2hWbTt29ZeWNZZ6aIBoQxTulyqAb3mJUWZjOcrxeSsgKSAqHVHQYscUeZNNOXQcrXYMMsu8dPkbk0RdawEsKySzhDD6AikpPWiX5GFIOjbJGPwvHHaBk7d9xCvPIllNN5F7HZ3ePCdjI54cfIwTkVO+BGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713422363; c=relaxed/simple;
	bh=BLQNKgtZt4R5ylG3W6+NWqZFHlnVzHAo0VifzJ8Jq7s=;
	h=To:Subject:From:Message-Id:Date; b=XIXyx2St/s2sTDzOEG1SVLkEGS7wM7dAzTGH+ttzK6N78iaMZSF9ANVJjHGbxeIU/mS3/+mrZqZtFabc/iXsD546KCosISMaXebTcLbqiSB4XkqWKQKSte+s3agWTMMZsOd+C7E3+PHCHZSEvZIXhEZkAnSXmrlKWme26GDkT+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjrCQmxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjrCQmxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DE9C4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713422362;
	bh=BLQNKgtZt4R5ylG3W6+NWqZFHlnVzHAo0VifzJ8Jq7s=;
	h=To:Subject:From:Date:From;
	b=MjrCQmxUexpU8zL+t1te6dvMsir4mVoiX5wQbV0rh8p+9fR8koXOayYtObyJPJJIW
	 OTFz0esZqgkEO4MQTckAh3KSurJMI/ZQNkWyvH85MmKr8T7XuCvgYLOnkXoi91d9qA
	 33j31ea+QONnpFS9fN0omxB0ZnMQOTiTegX8qCJg63UvsJWyS+Bob2x6Xtj2Tqy+LT
	 Sfq+gTwFj9mZiLN5Yt2K9y/4EN7R6VwcXJP2N/MAOyW7hb1GXCd0SIxn6FEzd7Yfyn
	 obN7S79phg1lRHkYzKX0DRivTOlmDDNe+jdCdLaJkfmiRAqifC8Q5KWZJjb4azmDzo
	 MlrwHqcMJhY5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF58C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342236277.32553.11233410245961446616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c6102253b42fc866450d80ed9e90ae24932058cda19650442319a7bfc372ee
Date: Thu, 18 Apr 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713422362
