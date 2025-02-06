Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369EE214210
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738836954; cv=none; b=sBlf+3spIf+iBMLPWTfP610TAbuvi9d/uIcR4saw7JhPd1gnHhG39V4uspZQ4uX+oa29uECyC6w4RTemiNb8FkKlXjuPfK2HC50nU8QoauveSAYUDhDfgreExXnP3LlpDCFwr2vfkj/iwjXJ++Hjod0HLYTXZiLg3ZXhWvUbIVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738836954; c=relaxed/simple;
	bh=+tQv50cjjKo6/ZbPqIDha+5kqB5gQQ3IXgacP25NJeY=;
	h=To:Subject:From:Message-Id:Date; b=UNRUYIrkVkASUC8LEtbtt0Esh4ltfTq1cPO2G8FIpP/S4yOsjsw0UmB5tH69H0Kz35rYYm2NJ+zZ0g0nZR+TOot5OrsYCc/5EpLQ7wtoPtulmKvrQevAjTEK1dQq7o/C77OjiD9v51wdZyK48jtUCpIe1EfRDtsnJsGvrzUC1kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg4Zxa6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg4Zxa6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E50C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738836953;
	bh=+tQv50cjjKo6/ZbPqIDha+5kqB5gQQ3IXgacP25NJeY=;
	h=To:Subject:From:Date:From;
	b=Hg4Zxa6ZC/aLPX+EWuD7CYHo/zcDH8tYj2QRWq3ST/Y4HRRtM0LxbWNnqoQ2y8gt8
	 8o6zNWceoR6ym6OxZ0bDrsLv3vvZIW8v6FyTzExQ+Ss5zMr/RK6ST33ww8Sn2qGidb
	 N5F7otxTvjmJRKy2vH18mpdq1Of60XUabxA/PdWf8Xs+PBPXtSo2xcITQ97RUqNo9k
	 aNtIp5Uvph83SXQWXWK9pN30mOyzx3vu0o5G5dDh5MtQukL3xDsS6qD+POguoSlsw/
	 NoXIoMCeP/BIz4ew9PTJO6P7E6vkuTBGRDZ8GFe6dI1pVbizr2Jr0zqE0N3q9JBzh4
	 rGBuWtmZaOteQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E1C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173883695359.14262.13113934452689209793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21049bd685cc3ce661e73541f12d7eba667a3fa06c0c5f78880b49de7274c240
Date: Thu, 06 Feb 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738836953
