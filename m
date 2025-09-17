Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFC3298CB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758112793; cv=none; b=CjtrLEhKR7PY4ljPRtvZgkxo59Yh3aPEGmy6zZMfEkVPGU5eMhV+ap1Bfk0xTwj/cnypiZ/webUFsEo75+BAJ+sJHKdydScIdpIP/0M6UqLTIYPIV6A+I1zdA13ETkLD/+r2B7YQPXXVDJu/naAu4mg4F6/27xOX5/Nt9oX/uWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758112793; c=relaxed/simple;
	bh=z4sTpCYRTz+D6PeyB2y8P07NpOnZLnV7DODJfUYJv70=;
	h=To:Subject:From:Message-Id:Date; b=ey1ZosCnpU/Ma1nYCpb0cs8RN5oergQfBxIYn0xZ+sXtQ4BdU/DFg0G9aHFMfV3dmJqJ2CLL6TfisZi/N2mVUd1PRgSDCuXotPwp4BvUO5oUWMntfaPvwzDjLz8We8O3LD+zT3sU4qdXtde4fJzwPSOQq4WeWZL+rUTEOKcyCx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWfhLJ5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWfhLJ5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE2C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758112793;
	bh=z4sTpCYRTz+D6PeyB2y8P07NpOnZLnV7DODJfUYJv70=;
	h=To:Subject:From:Date:From;
	b=RWfhLJ5WkCsosJst2Udi2YP8mnLNdowvAVntisBid3bHjvotoOcAoYJlWHSpIi8KE
	 QQHEd1i5ZFosYQpo4sg/6JGcqPsbrn8P7rOla4V0k9xGke4czC/8nlId2ZHw/8hM21
	 /WtAUkaq64pa1ReiKlqzkyYSNm2xItNt1epP5AerIHZFqMo64rqpAzRmSxhUJhvZzn
	 AaetY0oPydlzBreYp670p+z9QJzLHf4DrRdM1WBOlCbYuaqAgAkHRr+Efu2bl/MMYE
	 fHk9JB/3VxfjXhHDDz6yq1v38dCqZ7+ZXf2YmHqywN3VLMsQaoGq/dVl8guAGz4H4Y
	 td308ksOEj6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC3CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811279357.13913.17906754583695408631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae76d98585ae743bbd4e55eb1b19022070831c74926c63d7151af6d0f899283a
Date: Wed, 17 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758112793
