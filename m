Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FD62E401
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776561454; cv=none; b=oVkNtizuaxrSe3ht9ELsbPm0Z/hLamrzqWfvqqt2sWb/aVrGW2ULAXfvaHAMbLhr48o2EO5318YrRXEoFUdYprsWB8wLt89pWZaunW9uW7xCTtWn+NB7MAKsJ+tofLVe2uuUfpIxireyMTfVJ+1qJuZOuZqxphdeScoXt52bB50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776561454; c=relaxed/simple;
	bh=w6Oj/e0pITMTFlkMzRRzXg1OW0+Cs0A2/462NNtv/PA=;
	h=To:Subject:From:Message-Id:Date; b=g2RS+lMfTG5jAA6jnTXnKbdLqG219ddVrmZVv1jzc25ewYT17XpqfuHMKSdV+jhVSYh5kzSxyH0GW+qrxvrdKRzc6QshJPkOEnstzvII81M3lvIWS/Iy2G/KDuL+v7PyFxlLdnq3Y3EWbRJkod9vAXG8kj1FKfERH09COm0QWAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5L26k8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5L26k8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20E0C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776561453;
	bh=w6Oj/e0pITMTFlkMzRRzXg1OW0+Cs0A2/462NNtv/PA=;
	h=To:Subject:From:Date:From;
	b=J5L26k8kPmRKVk9qIYxRDz11tp2G9nRApocJUp1PLmMGoZZSxrPxuaiS3lYuCDw43
	 PkeX6mXR3i+FunIuZ+3b2hFwVHFa1fKs6Ac2S6H9o3EMe+x2BEaURtqM/h3a31xOaF
	 B+S0tKy3FCv9w90NwrT+EmfT+qty3Ioq5ykIIgR3rIQhM8La+fV/QVrUBUNRlze7ty
	 JB+x/M/W9+ca0EAq9bcz9mCcAMxQnna+k/kRuf8sWzZFgcIqRGck7V9Y4mhf4OPLLK
	 1qsr8LXkxCeZ0euJ3UfecFovbfCiL9giZFE5ivt1kX23tHc5X4vvJcIex6wfAplRZN
	 vOzic+WEsaEiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF494F99C92
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656145368.28412.2918592056328183220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c8bcb9925fadc794386811cc0aaa07d4e72ec72c526d9dfe3b760b0f0173d1
Date: Sun, 19 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776561453
