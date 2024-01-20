Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F15137D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705726697; cv=none; b=pri4lf0uLD2JbAC+nlj6uec54bZ7/naKQh5K0Xz1XqOBmohsgB7ZsoHSz9XQCD5hdDzj8jgLdIAMuTunQPD5E0gvnhdmNK2lGSZSkn8AQHZuZlnA6e7VPv4THQzDI1OdqJ/6ezZjZYr447YZLXo+mqnXAF4NLrfryW5juVdXxOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705726697; c=relaxed/simple;
	bh=BGJT/bzjZ7wjLDx+5eN6vfRGvSQH57kVueVoypXme3A=;
	h=To:Subject:From:Message-Id:Date; b=rrpuNugxH411pXAyqKcINsrWHmjTMTQCa2u8ZTQI5w93ROYcYKClSWYRVPmI6EgyUQJ013UQR272wPF8uOxjuStb20WyLQItPmw7I4PqDIzkrh8jgubxoOItIkdwRhTvG7vlaeOfSr1qVkghSWU/mjAYtggFZDlRwI9NAXa8Kjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKQGap2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKQGap2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DB4C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705726696;
	bh=BGJT/bzjZ7wjLDx+5eN6vfRGvSQH57kVueVoypXme3A=;
	h=To:Subject:From:Date:From;
	b=CKQGap2YbP5/AbjVWpthArIoN/UIFLR5S9Yl3q3Ngdh7TaT4QUAPRAj1rDFySsj2C
	 6iZ1ixmmrLxYlR+QaHVSO1OsB/anHqN019uNX6792SToN3YDk11qxVhej8lJt7utQU
	 w4em1bPQH+ZZSs0WTcwBk/3CMd114txGb/sxu+Et9g7d9I7BYX+RJUj504ZnP3ADBQ
	 1v4d30JkVqJqL3YwPPg2PH2V06YThAySTX94spLM0pkLlWRcf8+RzzMoUy8KydoSKX
	 pN4Xjrls60sj5uHqzXNPjs3WrN2VqjM4IjGzC4bfQNF2TZutrl5qMva8/gJLA8cmQy
	 VilswWGSU8reg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D18C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170572669638.24674.4755086097112812209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a191fdfa0582862832f66d5e6274aca7506a096f5ae547b499bc06433a66470
Date: Sat, 20 Jan 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705726696
